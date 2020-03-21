#!/bin/bash

#Install general programs
echo "
Installing all programs (python, chrome, calibre, git, vlc, etc.)
"
sh /home/flavio/my_tools/programs/install.sh

# ssh configuration
echo "
Copying ssh configurations and keys
"
sh /home/flavio/my_tools/ssh_config/install.sh

#Nord VPN install and configuration
echo "
Installing and configuring Nordvpn IKEV2
"
sh /home/flavio/my_tools/nordvpn/install.sh 

echo "
All Done !! 
"
