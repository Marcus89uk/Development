#!/bin/sh

#################################################
#                                               #
# A Custom Debian12  Script          #
# Installs Steam, NotepadQQ, flatpak & more     #
#                                               #
#################################################


sudo mkdir installer
sudo cd installer
sudo dpkg-reconfigure debconf
sudo cp sources.list /etc/apt/
sudo apt update
sudo apt install --no-install-recommends  -y dpkg \
                                             curl \
                                             wget \
                                             gnome-disk-utility \
                                             yakuake \
                                             gnupg2 \
                                             openjdk-17-jdk \
                                             openjdk-17-jre \
                                             openjdk-17-jdk-headless \
                                             notepadqq \
                                             galternatives \
                                             flatpak \
                                             plasma-discover-backend-flatpak

sudo apt install --no-install-recommends  -y gimp \
                                             gufw \
                                             kgpg \
                                             synaptic \
                                             net-tools \
                                             xvkbd \
                                             ffmpeg \
                                             obs-studio
                                             default-jdk-headless \
                                             default-jdk \
                                             default-jre \
                                             default-jre-headless \
                                             virtualbox \
                                             virtualbox-guest-additions-iso \
                                             virtualbox-qt






#sudo add-apt-repository ppa:libreoffice/ppa -y
#sudo add-apt-repository ppa:danielrichter2007/grub-customizer -y
#sudo add-apt-repository ppa:cubic-wizard/release -y
#sudo add-apt-repository ppa:cappelikan/ppa -y
#sudo add-apt-repository ppa:flatpak/stable -y
#sudo add-apt-repository ppa:graphics-drivers/ppa -y
#sudo add-apt-repository ppa:obsproject/obs-studio -y

echo "deb https://ppa.launchpadcontent.net/cubic-wizard/release/ubuntu/ noble main" | sudo tee /etc/apt/sources.list.d/cubic-wizard-release.list
curl -S "https://keyserver.ubuntu.com/pks/lookup?op=get&search=0x081525e2b4f1283b" | sudo gpg --batch --yes --dearmor --output /etc/apt/trusted.gpg.d/cubic-wizard-ubuntu-release.gpg

sudo apt update
sudo apt install --no-install-recommends cubic

# Install updates

sudo apt update
sudo apt upgrade -y
sudo apt autoremove -y
sudo apt autoclean -y



# Downloading Debs for install!

#################################################################################################


#sudo wget https://download.oracle.com/java/17/archive/jdk-17.0.11_linux-x64_bin.deb
#sudo wget https://launcher.mojang.com/download/Minecraft.deb
#sudo wget https://piston.feed-the-beast.com/app/ftb-app-1.25.13-amd64.deb
#sudo wget https://repo.steampowered.com/steam/archive/precise/steam_latest.deb
#sudo wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

sudo curl https://download.oracle.com/java/17/archive/jdk-17.0.11_linux-x64_bin.deb
sudo curl https://launcher.mojang.com/download/Minecraft.deb
sudo curl https://piston.feed-the-beast.com/app/ftb-app-1.25.13-amd64.deb
sudo curl https://repo.steampowered.com/steam/archive/precise/steam_latest.deb
sudo curl https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

#git clone https://github.com/Marcus89uk/Development.git



sudo wget -qO - https://mirror.mwt.me/shiftkey-desktop/gpgkey | gpg --dearmor | sudo tee /usr/share/keyrings/mwt-desktop.gpg > /dev/null
sudo sh -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/mwt-desktop.gpg] https://mirror.mwt.me/shiftkey-desktop/deb/ any main" > /etc/apt/sources.list.d/mwt-desktop.list'

sudo wget https://raw.githubusercontent.com/pimlie/ubuntu-mainline-kernel.sh/master/ubuntu-mainline-kernel.sh

sudo wget -O- https://deb.opera.com/archive.key | sudo gpg --dearmor | sudo tee /usr/share/keyrings/opera.gpg
echo deb [arch=amd64 signed-by=/usr/share/keyrings/opera.gpg] https://deb.opera.com/opera-stable/ stable non-free | sudo tee /etc/apt/sources.list.d/opera-stable.list

sudo apt update

sudo chmod +x ubuntu-mainline-kernel.sh
sudo chmod 0777 jdk-17.0.11_linux-x64_bin.deb
sudo chmod 0777 steam_latest.deb
################################################################################################
#Mainline kernel Script

sudo mv ubuntu-mainline-kernel.sh /usr/local/bin/

################################################################################################

# Installing Web Browsers

sudo apt install konqueror -y
sudo apt install opera-stable -y
sudo apt install ./steam_latest.deb -y


#############################################################################################
# Installing dependencies

sudo dpkg -i jdk-17.0.11_linux-x64_bin.deb

# Flatpak installs

sudo flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

#flatpak install com.valvesoftware.Steam -y

sudo flatpak install com.github.tchx84.Flatseal -y

sudo flatpak install com.discordapp.Discord -y

# Adding Grub Customizer


sudo apt update

sudo apt install -y grub-customizer


# Adding Cubic



# Adding GiHub-Desktop

sudo apt update
sudo apt install -y github-desktop

# Installing Minecraft Launchers

sudo chmod 0777 ftb-app-1.25.13-amd64.deb
sudo dpkg -i ftb-app-1.25.13-amd64.deb
#sudo chmod 0777 Minecraft.deb
#sudo dpkg -i Minecraft.deb
#sudo chmod 777 multimc_1.6-1.deb
#sudo dpkg -i multimc_1.6-1.deb

# Installing SteamCMD

sudo apt install steamcmd -y

# Installing virtualbox



# Installing Mainline

sudo apt update
sudo apt install mainline -y

sudo apt autoremove -y
sudo apt autoclean -y

# Installing Nvidia Drivers

#apt install nvidia-dkms-560 -y
#apt install nvidia-driver-560 -y

cd -

#rm -R -f installer

#ubuntu-mainline-kernel.sh -i 6.9.3

#echo"Finshed Install"
