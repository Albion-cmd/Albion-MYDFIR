import socket
import threading
from datetime import datetime
import sys

# Color coding for professional terminal output
GREEN = "\033[1;32m"
RESET = "\033[0m"

def scan_port(target, port):
    """Attempts a TCP handshake with a target port."""
    try:
        # Create a socket object (AF_INET = IPv4, SOCK_STREAM = TCP)
        s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        s.settimeout(0.5) # Fast timeout for efficiency
        
        # connect_ex returns 0 if the connection is successful (port is open)
        result = s.connect_ex((target, port))
        if result == 0:
            print(f"{GREEN}[+] Port {port} is OPEN{RESET}")
        s.close()
    except:
        pass

def main():
    if len(sys.argv) != 2:
        print("Usage: python3 scanner.py <Target-IP>")
        sys.exit()

    target = sys.argv[1]
    print(f"Scanning {target} started at {datetime.now()}")

    # Spawning threads for ports 1-1024 to demonstrate concurrency
    for port in range(1, 1025):
        thread = threading.Thread(target=scan_port, args=(target, port))
        thread.start()

if __name__ == "__main__":
    main()
