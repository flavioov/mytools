#!/bin/bash

#Install general programs
echo "
Installing all programs (python, chrome, calibre, git, vlc, etc.)
"
sh ~/my_tools/programs/basic_install.sh
sh ~/my_tools/programs/others_install.sh

#snap
echo "
Installing Spotify, Pycharmm, IntelliJ
"
sh ~/my_tools/programs/snap_install.sh

# ssh configuration
echo "
Copying ssh configurations and keys
"
sh ~/my_tools/ssh_config/install.sh

#Nord VPN install and configuration
echo "
Installing and configuring Nordvpn IKEV2
"
sh ~/my_tools/nordvpn/install.sh 

echo "
All Done !! 
"
