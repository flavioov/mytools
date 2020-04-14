#!/bin/bash

wget -qnc https://repo.nordvpn.com/deb/nordvpn/debian/pool/main/nordvpn-release_1.0.0_all.deb -P /tmp
sudo gdebi /tmp/nordvpn-release_1.0.0_all.deb                                                             
# trocar pelo diretório absoluto
myupdate

sudo apt install nordvpn
