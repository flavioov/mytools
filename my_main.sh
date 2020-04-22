#!/bin/bash

#Install general programs
echo "
Installing all programs (python, chrome, calibre, git, vlc, etc.)
"
sh ~/mytools/programs/basic_install.sh
sh ~/mytools/programs/others_install.sh

#snap
echo "
Installing Spotify, Pycharmm, IntelliJ
"
sh ~/mytools/programs/snap_install.sh

# ssh configuration
echo "
Copying ssh configurations and keys
"
sh ~/mytools/ssh_config/install.sh

#Nord VPN install and configuration
echo "
Installing and configuring Nordvpn IKEV2
"
sh ~/mytools/nordvpn/install.sh 

echo "
All Done !! 
"
