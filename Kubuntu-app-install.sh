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
cd installer


add-apt-repository ppa:libreoffice/ppa -y
add-apt-repository ppa:danielrichter2007/grub-customizer -y
add-apt-repository ppa:cubic-wizard/release -y
add-apt-repository ppa:cappelikan/ppa -y
add-apt-repository ppa:flatpak/stable -y
add-apt-repository ppa:graphics-drivers/ppa -y





# Installing Nvidia Drivers

apt install nvidia-dkms-560 -y
apt install nvidia-driver-560 -y

# Install updates

#apt update
#apt upgrade -y
#apt autoremove -y
#apt autoclean -y



# Downloading Debs for install!

#################################################################################################


wget https://download.oracle.com/java/17/archive/jdk-17.0.10_linux-x64_bin.deb
wget https://launcher.mojang.com/download/Minecraft.deb
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
wget https://piston.feed-the-beast.com/app/ftb-app-1.25.13-amd64.deb

git clone https://github.com/Marcus89uk/Development.git



wget -qO - https://mirror.mwt.me/shiftkey-desktop/gpgkey | gpg --dearmor | sudo tee /usr/share/keyrings/mwt-desktop.gpg > /dev/null
sudo sh -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/mwt-desktop.gpg] https://mirror.mwt.me/shiftkey-desktop/deb/ any main" > /etc/apt/sources.list.d/mwt-desktop.list'

wget https://raw.githubusercontent.com/pimlie/ubuntu-mainline-kernel.sh/master/ubuntu-mainline-kernel.sh

wget -O- https://deb.opera.com/archive.key | sudo gpg --dearmor | sudo tee /usr/share/keyrings/opera.gpg
echo deb [arch=amd64 signed-by=/usr/share/keyrings/opera.gpg] https://deb.opera.com/opera-stable/ stable non-free | sudo tee /etc/apt/sources.list.d/opera-stable.list

apt update

chmod 0777 google-chrome-stable_current_amd64.deb
chmod +x ubuntu-mainline-kernel.sh
chmod 0777 jdk-17.0.10_linux-x64_bin.deb

################################################################################################
#Mainline kernel Script

mv ubuntu-mainline-kernel.sh /usr/local/bin/

################################################################################################

# Installing Web Browsers

apt install konqueror -y
apt install opera-stable -y
dpkg -i google-chrome-stable_current_amd64.deb




#############################################################################################
# Installing dependencies

apt install wget gnome-disk-utility yakuake gnupg2 openjdk-17-jdk openjdk-17-jre openjdk-17-jdk-headless  openjdk-21-jdk openjdk-21-jdk-headless openjdk-21-jre curl notepadqq galternatives flatpak plasma-discover-backend-flatpak gimp gufw kgpg synaptic net-tools winetricks -y

dpkg -i jdk-17.0.10_linux-x64_bin.deb

# Flatpak installs

flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

flatpak install com.valvesoftware.Steam -y

flatpak install com.github.tchx84.Flatseal -y

flatpak install com.discordapp.Discord -y

# Adding Grub Customizer


apt update

apt install -y grub-customizer


# Adding Cubic


apt install cubic -y

# Adding GiHub-Desktop

apt update
apt install -y github-desktop

# Installing Minecraft Launchers

chmod 0777 ftb-app-1.25.13-amd64.deb
dpkg -i ftb-app-1.25.13-amd64.deb
chmod 0777 Minecraft.deb
dpkg -i Minecraft.deb
#chmod 777 multimc_1.6-1.deb
#dpkg -i multimc_1.6-1.deb

# Installing SteamCMD

apt install steamcmd -y

# Installing virtualbox

apt install virtualbox virtualbox-guest-additions-iso virtualbox-qt -y


# Installing Mainline

apt update
apt install mainline -y

apt autoremove -y
apt autoclean -y

cp Development/KDE-App-Launchers/com.valvesoftware.Steam.desktop /home/marcus/.local/share/applications
cp Development/KDE-App-Launchers/Factorio Standalone.desktop /home/marcus/.local/share/applications
cp Development/KDE-App-Launchers/MultiMC.desktop /home/marcus/.local/share/applications

cd -

#rm -R -f installer

#ubuntu-mainline-kernel.sh -i 6.9.3

#echo"Finshed Install"
