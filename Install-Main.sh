#!/bin/sh

#################################################
#                                               #
# A Custom Ubuntu/Distro 22.04+ Script          #
# Installs Steam, NotepadQQ, flatpak & more     #
#                                               #
#################################################



mkdir installer
chmod 777 installer
cd installer


apt update
apt upgrade -y
apt autoremove -y
apt autoclean -y

add-apt-repository ppa:danielrichter2007/grub-customizer -y
add-apt-repository ppa:cubic-wizard/release -y
add-apt-repository ppa:cappelikan/ppa -y
add-apt-repository ppa:flatpak/stable -y

# Installing dependencies

apt install wget -y
apt install software-properties-common apt-transport-https ca-certificates gnupg2 -y
apt install curl -y
apt install notepadqq -y
apt install galternatives -y
apt install flatpak -y
apt install gnome-software-plugin-flatpak -y



wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
wget -qO - https://apt.packages.shiftkey.dev/gpg.key | gpg --dearmor | sudo tee /usr/share/keyrings/shiftkey-packages.gpg > /dev/null
wget https://cdn.akamai.steamstatic.com/client/installer/steam.deb
wget https://raw.githubusercontent.com/pimlie/ubuntu-mainline-kernel.sh/master/ubuntu-mainline-kernel.sh
wget -O- https://deb.opera.com/archive.key | sudo gpg --dearmor | sudo tee /usr/share/keyrings/opera.gpg
echo deb [arch=amd64 signed-by=/usr/share/keyrings/opera.gpg] https://deb.opera.com/opera-stable/ stable non-free | sudo tee /etc/apt/sources.list.d/opera.list

apt update

chmod 777 google-chrome-stable_current_amd64.deb
chmod 777 steam.deb
chmod +x ubuntu-mainline-kernel.sh

#Mainline kernel Script

chmod +x ubuntu-mainline-kernel.sh
mv ubuntu-mainline-kernel.sh /usr/local/bin/

# Installing Web Browsers

apt install konqueror -y
apt install opera-stable -y
apt install ./google-chrome-stable_current_amd64.deb -y

# Installing Nvidia Drivers

apt install nvidia-dkms-550 -y
apt install nvidia-driver-550 -y

# Adding Grub Customizer


apt update
apt install -y grub-customizer

# Adding Cubic


apt install --no-install-recommends cubic -y

# Adding GiHub-Desktop


sh -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/shiftkey-packages.gpg] https://apt.packages.shiftkey.dev/ubuntu/ any main" > /etc/apt/sources.list.d/shiftkey-packages.list'
apt update
apt install -y github-desktop

# Installing Disks

apt install gnome-disk-utility -y



apt install -y ./steam.deb && apt install steamcmd -y

# Installing virtualbox

apt install virtualbox -y

# Installing Mainline

apt update
apt install mainline -y

cd -

ubuntu-mainline-kernel.sh -i

#echo"Finshed Install"
