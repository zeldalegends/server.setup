#!/bin/bash

# Source: https://docs.docker.com/engine/install/ubuntu/#installation-methods

# Setup Docker repository
sudo apt-get update
sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Install Docker Engine
sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin

# Running Docker as normal user
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker
sudo service docker restart

# Start on boot
sudo systemctl enable docker.service
sudo systemctl enable containerd.service

# Disable start on boot
# sudo systemctl disable docker.service
# sudo systemctl disable containerd.service

# Verify installations
docker info

echo If Docker daemon is not started, run \"sudo reboot\". 
