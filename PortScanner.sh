import socket
import threading
from datetime import datetime
import sys

# ──────────────────────────────────────────────
#  COLOR CODES
# ──────────────────────────────────────────────
RED    = "\033[1;31m"
YELLOW = "\033[1;33m"
GREEN  = "\033[1;32m"
CYAN   = "\033[1;36m"
RESET  = "\033[0m"

# ──────────────────────────────────────────────
#  PORT INTELLIGENCE DATABASE
#  Format: port -> (service, risk_level, reason, remediation)
#  Risk levels: "CRITICAL", "HIGH", "MEDIUM", "INFO"
# ──────────────────────────────────────────────
PORT_DB = {
    21:   ("FTP",             "CRITICAL", "Transmits credentials in plaintext. Commonly exploited for anonymous login and brute-force.",
           "Disable FTP. Use SFTP (port 22) instead.\n     Linux: sudo systemctl stop vsftpd && sudo systemctl disable vsftpd\n     UFW:   sudo ufw deny 21"),

    22:   ("SSH",             "INFO",     "Secure remote access. Safe if properly configured.",
           "Harden SSH: disable root login, use key-based auth, change default port.\n     Edit /etc/ssh/sshd_config: PermitRootLogin no | PasswordAuthentication no\n     sudo systemctl restart ssh"),

    23:   ("Telnet",          "CRITICAL", "Completely unencrypted. Credentials and session data sent in plaintext.",
           "Disable Telnet immediately. Use SSH instead.\n     Linux: sudo systemctl stop telnet && sudo ufw deny 23"),

    25:   ("SMTP",            "HIGH",     "Open SMTP can be abused for email relay and spam campaigns.",
           "Restrict SMTP to authorised IPs only.\n     UFW: sudo ufw allow from <trusted_ip> to any port 25\n     Block externally: sudo ufw deny 25"),

    53:   ("DNS",             "MEDIUM",   "Open DNS resolvers can be abused for amplification DDoS attacks.",
           "Restrict DNS to internal use or known clients only.\n     Disable recursion on public-facing DNS servers.\n     BIND: allow-recursion { trusted_ips; };"),

    80:   ("HTTP",            "MEDIUM",   "Unencrypted web traffic. Vulnerable to interception and MITM attacks.",
           "Redirect all HTTP to HTTPS (port 443).\n     Nginx: return 301 https://$host$request_uri;\n     Apache: Redirect permanent / https://yourdomain.com/"),

    110:  ("POP3",            "HIGH",     "Retrieves email in plaintext. Credentials exposed to interception.",
           "Disable POP3 or enforce POP3S (port 995).\n     sudo ufw deny 110"),

    135:  ("MS-RPC",          "HIGH",     "Windows RPC endpoint mapper. Heavily targeted by worms and lateral movement attacks.",
           "Block externally. Should never be exposed to the internet.\n     Windows Firewall: netsh advfirewall firewall add rule name='Block RPC' protocol=TCP localport=135 action=block dir=in"),

    139:  ("NetBIOS",         "HIGH",     "Legacy Windows file sharing. Exploited by EternalBlue and similar exploits.",
           "Disable NetBIOS over TCP/IP.\n     Windows: Network Adapter > IPv4 > Advanced > WINS > Disable NetBIOS\n     UFW: sudo ufw deny 139"),

    143:  ("IMAP",            "HIGH",     "Retrieves email in plaintext. Credentials exposed to interception.",
           "Disable IMAP or enforce IMAPS (port 993).\n     sudo ufw deny 143"),

    443:  ("HTTPS",           "INFO",     "Encrypted web traffic. Expected on web servers.",
           "Ensure TLS 1.2+ is enforced. Disable SSLv3, TLS 1.0, TLS 1.1.\n     Test with: nmap --script ssl-enum-ciphers -p 443 <target>"),

    445:  ("SMB",             "CRITICAL", "Server Message Block. Exploited by EternalBlue (MS17-010), WannaCry ransomware.",
           "Block SMB externally immediately.\n     UFW: sudo ufw deny 445\n     Windows: netsh advfirewall firewall add rule name='Block SMB' protocol=TCP localport=445 action=block dir=in\n     Apply patch: MS17-010"),

    1433: ("MSSQL",           "CRITICAL", "Microsoft SQL Server. Brute-forced frequently when exposed to the internet.",
           "Never expose databases to the internet.\n     UFW: sudo ufw deny 1433\n     Restrict to application server IPs only."),

    1521: ("Oracle DB",       "CRITICAL", "Oracle Database. Brute-forced frequently when exposed to the internet.",
           "Restrict to internal network only.\n     UFW: sudo ufw deny 1521"),

    2049: ("NFS",             "HIGH",     "Network File System. Misconfigured exports can allow unauthorised file access.",
           "Restrict NFS exports to trusted IPs.\n     /etc/exports: /data <trusted_ip>(rw,sync,no_subtree_check)\n     sudo ufw deny 2049 (block externally)"),

    3306: ("MySQL",           "CRITICAL", "MySQL database. Brute-forced frequently when exposed to the internet.",
           "Never expose databases to the internet.\n     UFW: sudo ufw deny 3306\n     Bind to localhost: edit /etc/mysql/my.cnf -> bind-address = 127.0.0.1"),

    3389: ("RDP",             "CRITICAL", "Remote Desktop Protocol. Prime target for brute-force and BlueKeep (CVE-2019-0708).",
           "Block RDP from the internet. Use VPN for remote access.\n     UFW: sudo ufw deny 3389\n     Windows: Disable NLA-less RDP, apply BlueKeep patch KB4499175"),

    4444: ("Metasploit/RAT",  "CRITICAL", "Default Metasploit listener port. Indicates possible active compromise or backdoor.",
           "INVESTIGATE IMMEDIATELY — possible active intrusion.\n     Kill process: sudo lsof -i :4444 | then kill the PID\n     UFW: sudo ufw deny 4444"),

    5432: ("PostgreSQL",      "CRITICAL", "PostgreSQL database. Brute-forced frequently when exposed to the internet.",
           "Restrict to localhost or app server only.\n     UFW: sudo ufw deny 5432\n     postgresql.conf: listen_addresses = 'localhost'"),

    5900: ("VNC",             "CRITICAL", "Virtual Network Computing. Often uses weak/no authentication.",
           "Disable VNC or tunnel through SSH.\n     UFW: sudo ufw deny 5900\n     SSH tunnel: ssh -L 5900:localhost:5900 user@host"),

    6379: ("Redis",           "CRITICAL", "Redis cache. Default config has NO authentication. Widely exploited for RCE.",
           "Enable Redis authentication and bind to localhost.\n     redis.conf: requirepass <strong_password>\n     redis.conf: bind 127.0.0.1\n     UFW: sudo ufw deny 6379"),

    8080: ("HTTP-Alt",        "MEDIUM",   "Alternate HTTP port. Often used by development servers or proxies.",
           "Ensure this is intentional. Redirect to HTTPS if serving web content.\n     sudo ufw deny 8080 (if not in use)"),

    8443: ("HTTPS-Alt",       "INFO",     "Alternate HTTPS port. Used by some web apps and admin panels.",
           "Verify this service is intentional and TLS is properly configured."),

    27017:("MongoDB",         "CRITICAL", "MongoDB database. Default config has NO authentication. Widely exploited.",
           "Enable MongoDB authentication and bind to localhost.\n     mongod.conf: security.authorization: enabled\n     mongod.conf: net.bindIp: 127.0.0.1\n     UFW: sudo ufw deny 27017"),
}

# ──────────────────────────────────────────────
#  RISK COLOUR MAPPING
# ──────────────────────────────────────────────
RISK_COLOR = {
    "CRITICAL": RED,
    "HIGH":     YELLOW,
    "MEDIUM":   CYAN,
    "INFO":     GREEN,
}

open_ports = []
lock = threading.Lock()

# ──────────────────────────────────────────────
#  CORE SCANNER
# ──────────────────────────────────────────────
def scan_port(target, port):
    try:
        s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        s.settimeout(0.5)
        result = s.connect_ex((target, port))
        if result == 0:
            with lock:
                open_ports.append(port)
        s.close()
    except Exception:
        pass

# ──────────────────────────────────────────────
#  REPORT GENERATOR
# ──────────────────────────────────────────────
def print_report(target):
    print(f"\n{'='*65}")
    print(f"  PORT SCAN REPORT — {target}")
    print(f"  Completed: {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}")
    print(f"{'='*65}\n")

    if not open_ports:
        print(f"{GREEN}[✓] No open ports detected.{RESET}")
        return

    sorted_ports = sorted(open_ports)
    print(f"[*] {len(sorted_ports)} open port(s) found:\n")

    for port in sorted_ports:
        if port in PORT_DB:
            service, risk, reason, remediation = PORT_DB[port]
            color = RISK_COLOR.get(risk, RESET)
            print(f"  {color}[{risk}]{RESET} Port {port} — {service}")
            print(f"     ⚠  {reason}")
            print(f"     🔧 Remediation:\n     {remediation}\n")
        else:
            print(f"  {CYAN}[UNKNOWN]{RESET} Port {port} — Unrecognised service")
            print(f"     ℹ  Investigate what is running on this port.")
            print(f"     🔧 Remediation: sudo lsof -i :{port} to identify the process.\n")

    # Summary
    critical = sum(1 for p in sorted_ports if p in PORT_DB and PORT_DB[p][1] == "CRITICAL")
    high     = sum(1 for p in sorted_ports if p in PORT_DB and PORT_DB[p][1] == "HIGH")
    medium   = sum(1 for p in sorted_ports if p in PORT_DB and PORT_DB[p][1] == "MEDIUM")

    print(f"{'='*65}")
    print(f"  SUMMARY")
    print(f"  {RED}CRITICAL: {critical}{RESET}  |  {YELLOW}HIGH: {high}{RESET}  |  {CYAN}MEDIUM: {medium}{RESET}")
    print(f"{'='*65}\n")

# ──────────────────────────────────────────────
#  MAIN
# ──────────────────────────────────────────────
def main():
    if len(sys.argv) != 2:
        print(f"\nUsage: python3 port_scanner.py <Target-IP>")
        print(f"Example: python3 port_scanner.py 192.168.1.1\n")
        sys.exit(1)

    target = sys.argv[1]

    try:
        socket.inet_aton(target)
    except socket.error:
        print(f"{RED}[!] Invalid IP address: {target}{RESET}")
        sys.exit(1)

    print(f"\n{CYAN}[*] Starting scan on {target} — {datetime.now().strftime('%H:%M:%S')}{RESET}")
    print(f"[*] Scanning all 65,535 ports. Please wait...\n")

    threads = []
    for port in range(1, 65536):
        t = threading.Thread(target=scan_port, args=(target, port))
        threads.append(t)
        t.start()

        # Throttle thread count to avoid OS limits
        if len(threads) >= 500:
            for t in threads:
                t.join()
            threads = []

    for t in threads:
        t.join()

    print_report(target)

if __name__ == "__main__":
    main()
