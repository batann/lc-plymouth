#!/bin/bash
clear
cd /home/batan/
if [[ -d == /usr/share/lc-plymouth/themes/anon ]];
then
sudo mv /usr/share/lc-plymouth/themes/anon /usr/share/lc-plymouth/themes/anon.org
fi
sudo mv /home/batan/lc-plymouth/anon /usr/share/plymouth/themes/
cd /usr/share/plymouth/themes
sudo plymouth-set-default-theme -R anon
sudo update-initramfs -u
sudo update-grub2
cd ~
sudo trash /home/batan/lc-plymouth
clear
echo -e "\033[32mScript executed successfully"
echo -e "\033[32mExiting...\033[0m"
