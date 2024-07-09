#!/bin/sh

#################################################
#                                               #
# A Custom Ubuntu/Distro 22.04+ Script          #
# Installs Steam, NotepadQQ, flatpak & more     #
#                                               #
#################################################

dpkg-reconfigure debconf

mkdir installer
chmod 777 installer



add-apt-repository ppa:libreoffice/ppa -y
add-apt-repository ppa:danielrichter2007/grub-customizer -y
add-apt-repository ppa:cubic-wizard/release -y
add-apt-repository ppa:cappelikan/ppa -y
add-apt-repository ppa:flatpak/stable -y
add-apt-repository ppa:graphics-drivers/ppa -y





# Installing Nvidia Drivers

apt install nvidia-dkms-535 -y
apt install nvidia-driver-535 -y

# Install updates

apt update
apt upgrade -y
apt autoremove -y
apt autoclean -y



# Downloading Debs for install!

#################################################################################################

cd home/marcus/Documents
wget https://download.oracle.com/java/17/archive/jdk-17.0.10_linux-x64_bin.deb
cd /home/marcus/Documents/installer
#wget https://files.multimc.org/downloads/multimc_1.6-1.deb
wget https://launcher.mojang.com/download/Minecraft.deb
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
wget https://piston.feed-the-beast.com/app/ftb-app-1.25.13-amd64.deb



wget -qO - https://mirror.mwt.me/shiftkey-desktop/gpgkey | gpg --dearmor | sudo tee /usr/share/keyrings/mwt-desktop.gpg > /dev/null
sudo sh -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/mwt-desktop.gpg] https://mirror.mwt.me/shiftkey-desktop/deb/ any main" > /etc/apt/sources.list.d/mwt-desktop.list'

wget https://cdn.akamai.steamstatic.com/client/installer/steam.deb
wget https://raw.githubusercontent.com/pimlie/ubuntu-mainline-kernel.sh/master/ubuntu-mainline-kernel.sh
wget -O- https://deb.opera.com/archive.key | sudo gpg --dearmor | sudo tee /usr/share/keyrings/opera.gpg
echo deb [arch=amd64 signed-by=/usr/share/keyrings/opera.gpg] https://deb.opera.com/opera-stable/ stable non-free | sudo tee /etc/apt/sources.list.d/opera.list

apt update

chmod 777 google-chrome-stable_current_amd64.deb
chmod 777 steam.deb
chmod +x ubuntu-mainline-kernel.sh
chmod 0777 jdk-17.0.10_linux-x64_bin.deb

################################################################################################
#Mainline kernel Script

chmod +x ubuntu-mainline-kernel.sh
mv ubuntu-mainline-kernel.sh /usr/local/bin/

################################################################################################

# Installing Web Browsers

apt install konqueror -y
apt install opera-stable -y
dpkg -i google-chrome-stable_current_amd64.deb




#############################################################################################
# Installing dependencies

apt install wget gnome-disk-utility yakuake gnupg2 openjdk-17-jdk openjdk-17-jre openjdk-17-jdk-headless  openjdk-21-jdk openjdk-21-jdk-headless openjdk-21-jre curl notepadqq galternatives flatpak plasma-discover-backend-flatpak gimp gufw kgpg synaptic net-tools -y

apt install ./jdk-17.0.10_linux-x64_bin.deb -y

flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo



# Adding Grub Customizer


apt update
apt install -y grub-customizer


# Adding Cubic


apt install cubic -y

# Adding GiHub-Desktop

apt update
apt install -y github-desktop

# Installing Minecraft Launchers

chmod 777 ftb-app-1.25.13-amd64.deb
dpkg -i ftb-app-1.25.13-amd64.deb
chmod 777 Minecraft.deb
dpkg -i Minecraft.deb
#chmod 777 multimc_1.6-1.deb
#dpkg -i multimc_1.6-1.deb

# Installing Steam

chmod 777 steam.deb
dpkg -i steam.deb -y
apt install steamcmd -y

# Installing virtualbox

apt install virtualbox virtualbox-guest-additions-iso virtualbox-qt -y


# Installing Mainline

apt update
apt install mainline -y

apt autoremove -y
apt autoclean -y




cd -

rm -R -f installer

#ubuntu-mainline-kernel.sh -i 6.9.3

#echo"Finshed Install"
