#!/bin/bash
# vim:fileencoding=utf-8:foldmethod=marker
#author:	fairdinkum batan
#mail:		12982@tutanota.com
------------------------------------------------------------------------------------------------

#{{{###  clear command and ansi coloring
clear
Black='\033[0;30m'
Red='\033[0;31m'
Green='\033[0;32m'
Blue='\033[0;34m'
Purple='\033[0;35m'
Cyan='\033[0;36m'
Yellow='\033[1;33m'
White='\033[1;37m'
BBlue='\e[0;104m'
BBlack='\e[0;100m'
RRed='\e[0;100m'
GGreen='\e[0;100m'
YYellow='\e[0;100m'
BBlue='\e[0;100m'
PPurple='\e[0;100m'
CCyan='\e[0;100m'
WWhite='\e[0;100m'

#}}}
#{{{### The Script sets up a LC-Linux plymouth theme

if [[ ! -d /usr/share/plymouth/themes/anon ]]; 
then 
	sudo mkdir -p /usr/share/plymouth/themes/anon 
fi

if [[ -d /usr/share/plymouth/themes/anon ]]; 
then 
	sudo mv /usr/share/plymouth/themes/anon /usr/share/plymouth/themes/anon-old
fi
for i in $(ls /home/batan/lc-plymouth/|grep -vE "install.sh|README.md|.git"); do
	sudo cp /home/batan/lc-plymouth/$i /usr/share/plymouth/themes/anon/$i
done
cd /usr/share/plymouth/themes/
sudo plymouth-set-default-theme anon
sudo update-initramfs -u
sudo update-grub2
clear
echo "LC-Linux plymouth theme has been installed"
#}}}




