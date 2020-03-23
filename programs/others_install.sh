#!/bin/bash

#OOKLA - SPEEDTEST
echo "
Installing OOKLA - SPEEDTEST
"
sudo apt-get install gnupg1 apt-transport-https dirmngr
export INSTALL_KEY=379CE192D401AB61

	# Ubuntu versions supported: xenial, bionic
	# Debian versions supported: jessie, stretch, buster
export DEB_DISTRO=$(lsb_release -sc)
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys $INSTALL_KEY
echo "deb https://ookla.bintray.com/debian ${DEB_DISTRO} main" | sudo tee  /etc/apt/sources.list.d/speedtest.list
sh ~/my_tools/bashrc/update_n_clean.sh

	# Other non-official binaries will conflict with Speedtest CLI
	# Example how to remove using apt-get
	# sudo apt-get remove speedtest-cli
sudo apt-get install speedtest

# Google Chrome
echo "
Installing Google Chrome
"
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' | sudo tee /etc/apt/sources.list.d/google-chrome.list
sh ~/my_tools/bashrc/update_n_clean.sh
sudo apt-get install google-chrome-stable

# insync GoogleDrive
echo "
Installing Insync
"
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys ACCAF35C
sudo add-apt-repository "deb http://apt.insynchq.com/ubuntu xenial non-free contrib"
sh ~/my_tools/bashrc/update_n_clean.sh
sudo apt-get install -y insync

#Python
echo "
Installing Python pip 
"
#### pip ####
#pip2 & pip3
sudo apt install -y python-pip
sudo apt install -y python3-venv python3-pip
pip3 install -U pip
sh ~/my_tools/bashrc/update_n_clean.sh

#Packages
sudo apt-get -y install python-numpy python-scipy python-matplotlib ipython ipython-notebook python-pandas python-sympy python-nose

#pip upgrade
sudo -H pip3 install -U pip

#packages sysstem wide
sudo -H pip3 install --ignore-installed -U numpy scipy matplotlib ipython jupyter pandas sympy nose

sh ~/my_tools/bashrc/update_n_clean.sh


