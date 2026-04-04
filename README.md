# Wilson Oluwasemiloore Elan | Security Portfolio

<div align="center">

![Security](https://img.shields.io/badge/Focus-Blue%20Team%20%7C%20Penetration%20Testing-blue?style=for-the-badge)
![Cert](https://img.shields.io/badge/CompTIA-Security%2B%20Certified-red?style=for-the-badge)
![Status](https://img.shields.io/badge/Status-Actively%20Updated-green?style=for-the-badge)

**Wilson Elan Oluwasemiloore**
Self-taught cybersecurity analyst documenting hands-on security work across offensive and defensive domains.

[Portfolio](./Portfolio.md) • [LinkedIn](https://www.linkedin.com/in/elan-wilson-709942302) • [Certificate Repository](https://drive.google.com/drive/folders/1io2daYJO_JYVX27C8rYraBT7UbtBwv4D?usp=sharing)

</div>

---

## About This Repository

This repo contains the tools, scripts, and portfolio documentation from my hands-on cybersecurity journey. Every project here was built, tested, and documented from scratch — with an emphasis on understanding the *why* behind each technique, not just running tools.

My work spans both sides of the kill chain: custom security tooling, manual penetration testing, OS hardening, network traffic analysis, and defensive security operations.

---

## Tools in This Repo

### Albion Hardener — Security Posture Framework
`Albion Harden Script For Linux`

A multi-distro Linux hardening framework with a full terminal GUI (whiptail). Scans the host, produces a scored security posture report, and applies hardening at four configurable levels.

**Features:**
- Auto-detects distro and package manager (Debian / Ubuntu / Kali / Arch / Fedora)
- Scores your security posture out of 100 with risk classification
- Four hardening levels: Decent, Advanced, Secured, Custom
- Modules: UFW/firewalld, SSH hardening, sysctl kernel tweaks, MAC randomisation, fail2ban, rkhunter, auditd, password policy, auto-updates
- Full ASCII branding, colour-coded output, timestamped log file

**How to run:**
```bash
chmod +x albion_hardener.sh
sudo TERM=xterm bash albion_hardener.sh
```

> **Note:** Use `TAB` to navigate between buttons and `ENTER` to confirm. If running over SSH, prefix with `sudo TERM=xterm` as shown above.

---

### Python Port Scanner — Blue Team Edition
`PortScanner.sh`

A multi-threaded Python port scanner built for Blue Team defenders. Scans all 65,535 TCP ports, cross-references findings against a built-in port intelligence database, and provides risk classifications with OS-level remediation guidance.

**Features:**
- Full 65,535 TCP port scan with thread throttling
- Risk classification: CRITICAL / HIGH / MEDIUM / INFO
- Built-in remediation commands for 25+ known dangerous ports
- Zero dependencies — Python standard library only
- Colour-coded terminal output with summary report

**How to run:**
```bash
python3 port_scanner.py <target-ip>
```

> ⚠️ Only scan systems you own or have written authorisation to test.

**Resources:**
- [Full Writeup & Usage Guide (PDF)](https://drive.google.com/file/d/1yi8Et-3uCqlh21aM-vhg3YyhIP-bHbo7/view?usp=sharing)

---

## Portfolio Projects

The full portfolio with writeups, evidence, and documentation for all projects is in [Portfolio.md](./Portfolio.md).

| Project | Category | Link |
|---|---|---|
| Custom Python Port Scanner | Blue Team Tool | [View](./Portfolio.md) |
| Albion Hardener v2.0 | OS Hardening / DevSecOps | [View](./Portfolio.md) |
| Web Application Penetration Testing Series | Offensive Security | [Google Drive](https://drive.google.com/drive/folders/1yvdHyT7VGKNlmD0sZu334IwsddFWeUrq?usp=drive_link) |
| Password Security & Hash Recovery Analysis | Forensics / Offensive | [Google Drive](https://drive.google.com/drive/folders/1YK9itfcQyA1n0WOqtnM-IRA-aZJ_pyV_?usp=sharing) |
| Network Traffic Analysis & Threat Detection | Defensive Security | [Google Drive](https://drive.google.com/drive/folders/1UR2-IlzWthlRS9aqxHIPRy6bn4jZO2Ij) |
| Vulnerability Assessment & Remediation | Vulnerability Management | [Google Drive](https://drive.google.com/file/d/12c3b4u4cF2Wr87DqIQEPymmgAnBKInzx/view) |
| Advanced Nmap Firewall Evasion | Network Security Research | [Google Drive](https://drive.google.com/drive/folders/1Q_1Aq43LeYYIGs0poVp6DOm6Iglw3MGW) |
| Suricata IDS Deployment  | Network Monitoring  | [Google Drive](https://drive.google.com/drive/folders/1w11vS5wri9W90prcHo_QxiVt-ImDAtCD?usp=drive_link) |


---

## Skills Demonstrated

```
Offensive       →  Penetration testing, web & API security, manual exploitation,
                   hash cracking, firewall evasion, BOLA/BFLA, XSS, SQLi

Defensive       →  Log analysis, alert triage, pcap analysis, threat hunting,
                   OS hardening, firewall management, C2 detection

Tooling         →  Burp Suite, OWASP ZAP, Nmap, Nessus, Wireshark,
                   Metasploit, John the Ripper, Splunk, UFW, fail2ban

Programming     →  Python (socket, threading, CLI), Bash (automation, hardening)

API Security    →  OWASP API Top 10, authentication testing, Postman, curl

GRC             →  ISO/IEC 27001, PCI-DSS awareness, risk assessment,
                   technical report writing
```

---

## Certifications

| Certification | Issuer |
|---|---|
| CompTIA Security+ (SY0-701) | CompTIA |
| Certified Threat Intelligence & Governance Analyst (CTIGA) | — |
| Certified Red Team Operations Management (CRTOM) | — |
| Certified Cybersecurity Educator Professional (CCEP) | — |
| OWASP API Security Top 10 | APIsec University |
| API Penetration Testing | APIsec University |
| API Security Fundamentals | APIsec University |
| Advent in Cyber 2025 | TryHackMe |
| MCP Security Fundamentals | Microsoft |
| Building Security into AI | — |

[View all certificates →](https://drive.google.com/drive/folders/1io2daYJO_JYVX27C8rYraBT7UbtBwv4D?usp=sharing)

---

## CTFs & Labs

Actively participating in CTF challenges and structured security labs focused on:
- Log analysis & SIEM investigation
- Network traffic inspection
- Incident detection & triage
- Web application exploitation

[View lab evidence & writeups →](https://drive.google.com/drive/folders/1YxHe2bxiZPcYbQD266mXE9W6LJp4wpLW?usp=sharing)

---

## Legal Disclaimer

All tools and techniques documented in this repository are for **authorised and educational use only**. Only test systems you own or have explicit written permission to assess. Unauthorised scanning or exploitation is illegal.

---

<div align="center">

*Albion-MYDFIR — Wilson Elan Oluwasemiloore — Actively building in public*

</div>
