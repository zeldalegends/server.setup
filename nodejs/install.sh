#!/bin/bash

echo "Node.js version to install (default=18): " 
read ver
[ -z "$ver" ] && ver=18

curl -fsSL https://deb.nodesource.com/setup_$ver.x | sudo -E bash - &&\
sudo apt-get install -y nodejs