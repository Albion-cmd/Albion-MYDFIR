#!/bin/bash

GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m' # No Color

echo -e "${GREEN}[+] Initializing Hardening Sequence...${NC}"

# 1. Update System
echo -e "${GREEN}[*] Updating repositories...${NC}"
sudo apt update && sudo apt full-upgrade -y

# 2. Network Hardening (Firewall)
echo -e "${GREEN}[*] Configuring UFW (Deny All Inbound)...${NC}"
sudo apt install ufw -y
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw --force enable

# 3. Persistent OPSEC (Boot-time MAC Spoofing)
echo -e "${GREEN}[*] Configuring Persistent MAC Randomization...${NC}"
sudo apt install macchanger -y
# Creating a script to run on network interface start
cat <<EOF | sudo tee /etc/network/if-pre-up.d/macchanger
#!/bin/sh
/usr/bin/macchanger -r \$IFACE
EOF
sudo chmod +x /etc/network/if-pre-up.d/macchanger

# 4. Create Non-Root Administrative User
echo -e "${GREEN}[*] Creating 'auditor' user for non-root operations...${NC}"
if ! id "auditor" &>/dev/null; then
    sudo useradd -m -G sudo -s /bin/bash auditor
    echo "Set password for the new 'auditor' user:"
    sudo passwd auditor
fi

# 5. Tooling Suite Setup
echo -e "${GREEN}[*] Deploying Custom Tool Suite...${NC}"
mkdir -p /home/$(whoami)/tools
cd /home/$(whoami)/tools

# Clone essential repositories not in default Kali
git clone https://github.com/dirkjanm/BloodHound.py.git
sudo apt install seclists -y

echo -e "${GREEN}[+] HARDENING COMPLETE.${NC}"
echo -e "${RED}[!] PLEASE REBOOT to apply MAC randomization and firewall rules.${NC}"
