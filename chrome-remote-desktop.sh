#!/bin/bash
read -p "" CRP
wget https://dl.google.com/linux/direct/chrome-remote-desktop_current_amd64.deb
sudo apt install --assume-yes --fix-broken ./*.deb && rm *.deb *.deb.*          
DISPLAY= /opt/google/chrome-remote-desktop/start-host --code="$CRP" --redirect-url="https://remotedesktop.google.com/_/oauthredirect" --name=Linux --pin=123456