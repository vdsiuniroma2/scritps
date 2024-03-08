# > lsb_release -a                                                                                                    ok | user@ubuntu  23:41:13
# No LSB modules are available.
# Distributor ID: Ubuntu
# Description:    Ubuntu 21.10
# Release:        21.10
# Codename:       impish

# > uname -a                                                                                                          ok | user@ubuntu  23:41:17
# Linux ubuntu 5.13.0-52-generic #59-Ubuntu SMP Wed Jun 15 20:17:13 UTC 2022 x86_64 x86_64 x86_64 GNU/Linux

## dirs
mkdir ~/Documents/tools
mkdir ~/Documents/file_trans
mkdir ~/Documents/file_trans/win
mkdir ~/Documents/file_trans/linux

## enumeration

pipx install crackmapexec

sudo apt install snmpd snmp libsnmp-dev     #snmpwalk    

sudo apt install whois

sudo gem install wpscan

sudo snap install searchsploit

## mail

sudo apt install swaks

pip3 install wsgidav cheroot lxml # create webstie for phishing   

## AD

wget -O - https://debian.neo4j.com/neotechnology.gpg.key | sudo apt-key add - # neo4j
echo 'deb https://debian.neo4j.com stable latest' | sudo tee -a /etc/apt/sources.list.d/neo4j.list
sudo apt-get update
sudo apt-get install apt-transport-https
sudo apt install neo4j
sudo systemctl enable neo4j
sudo systemctl start neo4j

wget https://github.com/BloodHoundAD/BloodHound/releases/download/v4.3.0/BloodHound-linux-x64.zip # bloodhound
mv BloodHound-linux-x64.zip ~/Documents/tools/BloodHound.zip
unzip ~/Documents/tools/BloodHound.zip
sudo ln -s  ~/Documents/tools/BloodHound/BloodHound /usr/local/bin/bloodhound

## network

sudo apt install ruby-dev ruby gem
sudo gem install evil-winrm

python3 -m pipx install impacket
pipx ensurepath   

sudo apt install vsftpd  # do not enable it   

sudo echo "python3 -m http.server --directory ~/Documents/file_trans" >> /usr/local/bin/start_file_server # useful for file transfers
sudo chmod +x /usr/local/bin/start_file_server

## utils

sudo apt install mysql-client

sudo apt install hashcat

sudo apt install rlwrap

sudo apt install pipx

# install both and pray one works
sudo apt install rdesktop
sudo apt install freerdp2-x11
