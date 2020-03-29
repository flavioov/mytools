#!/bin/bash
cp -f ~/my_tools/ssh_config/config ~/.ssh/
cat ~/my_tools/ssh_config/authorized_keys >> ~/.ssh/authorized_keys
ssh-keygen -b rsa -t 4096
