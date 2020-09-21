#!/bin/bash
sh ~/my_tools/bashrc/update_n_clean.sh

#Strongswan
echo "
Installing NordVPN stuff: strongswan libcharon-extra-plugins libcharon-standard-plugins 
"
sudo apt-get install strongswan libcharon-extra-plugins libcharon-standard-plugins -y
sh ~/mytools/bashrc/update_n_clean.sh

#Coping configuration files
	#Configure secrets
sudo vim /etc/ipsec.secrets
	#Configure ipsec.conf
sudo vim /etc/ipsec.conf
	#Configure Constraints
sudo vim /etc/strongswan.d/charon/constraints.conf

#NordVPN RSA certificate
sudo wget https://downloads.nordcdn.com/certificates/root.der -O /etc/ipsec.d/cacerts/NordVPN.der
sudo openssl x509 -inform der -in /etc/ipsec.d/cacerts/NordVPN.der -out /etc/ipsec.d/cacerts/NordVPN.pem

#ipsec restart
sudo ipsec restart

echo "
NordVPN IKEV2 is ready!!
"

