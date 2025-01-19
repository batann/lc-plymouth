#!/bin/bash

cd /home/batan/
sudo mv anon /usr/share/plymouth/themes/
cd /usr/share/plymouth/themes
sudo plymouth-set-default-theme -R anon
sudo update-initramfs -u
sudo update-grub2
