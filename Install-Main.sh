#!/bin/sh


# Updates before Install

apt update
apt upgrade -y
apt autoremove -y
apt autoclean -y

apt install wget -y
apt install curl -y
apt install notpadqq


# Installing Web Browsers

apt install konqueror

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
chmod 777 google-chrome-stable_current_amd64.deb
apt install ./google-chrome-stable_current_amd64.deb -y

# Installing Nvidia Drivers

apt install nvidia-dkms-550 -y
apt install nvidia-driver-550 -y

# Adding Grub Customizer

add-apt-repository ppa:danielrichter2007/grub-customizer -y
apt update
apt install -y grub-customizer

# Adding Cubic

apt-add-repository ppa:cubic-wizard/release -y
apt install --no-install-recommends cubic -y

# Adding GiHub-Desktop

wget -qO - https://apt.packages.shiftkey.dev/gpg.key | gpg --dearmor | sudo tee /usr/share/keyrings/shiftkey-packages.gpg > /dev/null
sh -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/shiftkey-packages.gpg] https://apt.packages.shiftkey.dev/ubuntu/ any main" > /etc/apt/sources.list.d/shiftkey-packages.list'
apt update
apt install -y github-desktop

# Installing Disks

apt install gnome-disk-utility -y

wget https://cdn.akamai.steamstatic.com/client/installer/steam.deb
chmod 777 steam.deb
apt install -y /steam.deb
apt install steamcmd -y

# Installing virtualbox

apt install virtualbox -y

# Installing Mainline

sudo add-apt-repository ppa:cappelikan/ppa -y
sudo apt update
sudo apt install mainline -y

#Mainline kernel Script

wget https://raw.githubusercontent.com/pimlie/ubuntu-mainline-kernel.sh/master/ubuntu-mainline-kernel.sh
chmod +x ubuntu-mainline-kernel.sh
mv ubuntu-mainline-kernel.sh /usr/local/bin/
