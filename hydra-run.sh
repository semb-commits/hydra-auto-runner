#!/bin/bash
# Hydra Auto Runner - Educational/Testing Only
# Author: sdev
# Use only on systems you own or have permission to test

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

echo -e "${YELLOW}=== Hydra Auto Runner ===${NC}"
echo -e "${RED}WARNING: Only use on systems you own or have explicit permission to test!${NC}"
echo ""

read -p "Target IP/Domain [127.0.0.1]: " target
target=${target:-127.0.0.1}

echo -e "${GREEN}Supported services:${NC} ssh, ftp, http-post-form, http-get-form"
read -p "Service: " service

read -p "Username flag [-l admin] atau [-L users.txt]: " userflag
read -p "Wordlist path: " wordlist

if [! -f "$wordlist" ]; then
    echo -e "${RED}Error: Wordlist not found!${NC}"
    exit 1
fi

read -p "Threads [4]: " threads
threads=${threads:-4}

echo ""
echo -e "${GREEN}Running:${NC} hydra $userflag -P $wordlist $service://$target -t $threads -vV"
echo "Press ENTER to start or CTRL+C to cancel"
read

hydra $userflag -P "$wordlist" "$service://$target" -t "$threads" -vV

echo -e "${GREEN}Done!${NC}"
