#!/bin/bash

# Latest version available here: https://download.foldingathome.org

# FAHControl
wget https://download.foldingathome.org/releases/public/release/fahcontrol/debian-stable-64bit/v7.6/fahcontrol_7.6.21-1_all.deb

# FAHClient for x86-64
wget https://download.foldingathome.org/releases/public/release/fahclient/debian-stable-64bit/v7.6/fahclient_7.6.21_amd64.deb
sudo dpkg -i --force-depends fahclient_7.6.21_amd64.deb

# FAHClient for ARM
# wget https://download.foldingathome.org/releases/public/release/fahclient/debian-stable-arm64/v7.6/fahclient_7.6.21_arm64.deb 
# sudo dpkg -i --force-depends fahclient_7.6.21_arm64.deb

# Copy config and reboot to apply changes
sudo cp config.xml /etc/fahclient/
echo Press Enter to reboot...
read key
sudo reboot
