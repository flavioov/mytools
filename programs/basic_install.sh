#!/bin/bash
#### General Programs ####

echo "
Installing General programs: lynx gparted vim gdebi nautilus git byobu gimp synaptic pdfshuffler okular tree speedcrunch vlc csh tcsh openssh-client openssh-server wakeonlan autossh
"
sh ~/mytools/bashrc/update_n_clean.sh
sudo apt-get install -y lynx gparted vim gdebi nautilus git byobu gimp synaptic pdfshuffler okular tree speedcrunch vlc csh tcsh openssh-client openssh-server wakeonlan autossh curl rar

#openssh
echo "
Installing OpenVPN network-manager-openvpn
"
sudo apt-get install -y  openssh-client network-manager-openvpn*


