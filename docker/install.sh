#!/bin/bash

# Source: https://docs.docker.com/engine/install/ubuntu/#installation-methods

# Uninstall old versions
sudo apt remove docker docker-engine docker.io containerd runc

# Setup the repository
sudo apt update
sudo apt install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

sudo mkdir -m 0755 -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Install Docker Engine
sudo apt update
sudo apt install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# Manage Docker as a non-root user
# groupadd docker # (already created in Ubuntu)
sudo adduser $USER docker # sudo usermod -aG docker $USER
newgrp docker # activate the changes to groups
sudo service docker restart # sudo systemctl restart docker.service

# Configure Docker to start on boot with systemd # (already set in Ubuntu) 
# sudo systemctl enable docker.service
# sudo systemctl enable containerd.service

# Disable start Docker on boot
# sudo systemctl disable docker.service
# sudo systemctl disable containerd.service

# Verify installations
docker info
# systemctl status docker.service
sudo service docker status

echo Press Enter to reboot, CTRL+C to terminate...
read key
sudo reboot 
