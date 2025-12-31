
#!/bin/bash

# --- Metadata ---
# Title: Kali Linux Post-Install Hardening & Customization
# Author: [Your Name]
# Purpose: Automates OS hardening, firewall config, and tool deployment.

# Colors for output
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m'

echo -e "${GREEN}[+] Starting Kali Hardening & Setup...${NC}"

# 1. Update & Upgrade
update_system() {
    echo -e "${GREEN}[*] Updating system repositories...${NC}"
    sudo apt update && sudo apt full-upgrade -y
}

# 2. Network Hardening (UFW)
configure_firewall() {
    echo -e "${GREEN}[*] Configuring Firewall (UFW)...${NC}"
    sudo apt install ufw -y
    sudo ufw default deny incoming
    sudo ufw default allow outgoing
    # Allow specific ports if needed (e.g., for reverse shells)
    # sudo ufw allow 4444/tcp 
    sudo ufw enable
}

# 3. Privacy: MAC Address Spoofing
setup_macchanger() {
    echo -e "${GREEN}[*] Setting up MACChanger for eth0/wlan0...${NC}"
    sudo apt install macchanger -y
    # This creates a systemd service or a simple alias to randomize on boot
    sudo macchanger -r eth0
}

# 4. Create a Non-Root Audit User
setup_user() {
    echo -e "${GREEN}[*] Creating a dedicated 'auditor' user...${NC}"
    if id "auditor" &>/dev/null; then
        echo "User auditor already exists."
    else
        sudo useradd -m -G sudo -s /bin/bash auditor
        echo "Please set password for auditor:"
        sudo passwd auditor
    fi
}

# 5. Tool Suite Installation (GitHub / Extra)
install_tools() {
    echo -e "${GREEN}[*] Installing custom tool suite...${NC}"
    mkdir -p ~/tools
    cd ~/tools
    
    # Example: Installing BloodHound.py
    if [ ! -d "BloodHound.py" ]; then
        git clone https://github.com/dirkjanm/BloodHound.py.git
    fi
    
    # Example: Download SecLists
    sudo apt install seclists -y
}

# Execute Functions
update_system
configure_firewall
setup_macchanger
setup_user
install_tools

echo -e "${GREEN}[+] Setup Complete! System is hardened and tools are ready.${NC}"
