#!/bin/bash

echo "Node.js version to install (default=20): " 
read ver
[ -z "$ver" ] && ver=20

#!/bin/bash

# Uninstall nodejs Ubuntu & Debian packages
# https://github.com/nodesource/distributions#uninstall-nodejs-ubuntu--debian-packages

sudo apt-get purge nodejs &&\
sudo rm -r /etc/apt/sources.list.d/nodesource.list &&\
sudo rm -r /etc/apt/keyrings/nodesource.gpg

# Installation Instructions
# https://github.com/nodesource/distributions#installation-instructions

# Download and import the Nodesource GPG key
sudo apt-get update
sudo apt-get install -y ca-certificates curl gnupg
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg

# Create deb repository
# NODE_MAJOR=20
NODE_MAJOR=ver
echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_$NODE_MAJOR.x nodistro main" | sudo tee /etc/apt/sources.list.d/nodesource.list

# Run Update and Install
sudo apt-get update
sudo apt-get install nodejs -y

# npm init -y

# DEPRECATED SCRIPTS

# curl -fsSL https://deb.nodesource.com/setup_current.x | sudo -E bash - &&\
# sudo apt-get install -y nodejs

# curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash - &&\
# sudo apt-get install -y nodejs
