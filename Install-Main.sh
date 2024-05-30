#!/bin/sh

# Adding Grub Customizer


add-apt-repository ppa:danielrichter2007/grub-customizer
apt update
apt install grub-customizer



# Adding Cubic

apt-add-repository ppa:cubic-wizard/release
apt install --no-install-recommends cubic




# Adding GiHub-Desktop

wget -qO - https://apt.packages.shiftkey.dev/gpg.key | gpg --dearmor | sudo tee /usr/share/keyrings/shiftkey-packages.gpg > /dev/null
sh -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/shiftkey-packages.gpg] https://apt.packages.shiftkey.dev/ubuntu/ any main" > /etc/apt/sources.list.d/shiftkey-packages.list'
apt update
apt install github-desktop




