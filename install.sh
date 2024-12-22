#!/bin/bash

#Author	: Fairdinkum Batan
#Goal	: Install Cusdtom LC-Plymouth Theme
#Date	: 2023-12-30
DEPS="plymouth plymouth-x11"

for packs in ${DEPS[@]}; do
	dpkg -s ${packs} &> /dev/null 2>&1
	if [ $? != 1 ]; then
		sudo apt install ${packs} -y
	fi
done


if [[ ! -d "/usr/share/plymouth/themes" ]]; then
	sudo mv /home/batan/lc-plymouth /usr/share/plymouth/themes/anon
else
	sudo mv /usr/share/plymouth/themes/anon /usr/share/plymouth/themes/anon.bak
	sudo mv /home/batan/lc-plymouth /usr/share/plymouth/themes/anon
fi

cd /usr/share/plymouth/themes/
sudo plymouth-set-default-theme anon
sudo update-initramfs -u
sudo update-grub2
clear





sudo trash /usr/share/plymouth/themes/anon/{.git,images,install.sh,README.md}
clear
echo -e "\033[1;32mScript executed successfully.\033[0m"
exit





