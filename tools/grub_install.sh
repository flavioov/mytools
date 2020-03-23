#!/bin/bash
echo "
Setting GRUB
"
sudo > /etc/default/grub

sudo cat ~/my_tools/tools/grub_config >> /etc/default/grub

sudo update-grub
sudo update-grub2
