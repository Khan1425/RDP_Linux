#!/bin/bash
read -p "" CRP
rm *.sh *.deb
echo "123456 123456" | eval $CRP 
sudo apt update
wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb && sudo useradd -m user && sudo adduser user sudo && echo 'user:user' | sudo chpasswd && yes user | sudo passwd 
sudo apt  install --assume-yes --fix-broken ./*.deb -y
sudo usermod -a -G sudo,adm user
sudo adduser user chrome-remote-desktop
echo "123456 123456" | eval $CRP 
sudo service chrome-remote-desktop start
sudo apt install xfce4 -y
sudo apt install xrdp -y 
sudo apt install gnome -y
sudo apt install firefox -y
pulseaudio -k
wget https://raw.githubusercontent.com/amitstudydude/RDP_Linux/main/Loop.sh
bash *.sh
clear