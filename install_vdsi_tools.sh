# Updating and installing core software 
echo -e "[+] Updating system packets"
sudo apt-get update

echo -e "[+] Installing software by apt"
sudo apt-get install git gcc gzip tar unzip curl nmap netcat dnsutils wget gobuster hydra john \
    john-data hashcat hashcat-data

# rockyou
echo -e "[+] installing rockyou wordlists"
cd /usr/share
sudo mkdir wordlist
sudo git clone https://github.com/praetorian-inc/Hob0Rules.git
sudo cp Hob0Rules/wordlists/rockyou.txt.gz wordlist/rockyou.txt.gz
sudo gunzip wordlist/rockyou.txt.gz
sudo rm -r Hob0Rules
echo -e "[+] Rockyou.txt installed: it can be found under /usr/share/wordlist/rockyou.txt"

# Install Ghidra
echo -e "[+] Installing Ghidra"
cd ~
sudo apt-get install openjdk-11-jdk
wget https://github.com/NationalSecurityAgency/ghidra/releases/download/Ghidra_11.0.1_build/ghidra_11.0.1_PUBLIC_20240130.zip
unzip ghidra_11.0.1_PUBLIC_20240130.zip
cd ghidra_11.0.1_PUBLIC
chmod +x ghidraRun

echo -e "[!] To install burp, go to: https://portswigger.net/burp/documentation/desktop/getting-started/download-and-install"
