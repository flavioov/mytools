#!/bin/bash
echo "
Setting GRUB
"
sudo > /etc/default/grub

sudo cat ~/mytools/tools/grub/grub_config >> /etc/default/grub

sudo update-grub
sudo update-grub2
