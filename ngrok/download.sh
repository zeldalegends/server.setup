#!/bin/bash

wget https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-amd64.tgz 
### https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-arm64.tgz ### for ARM

tar xvzf ngrok-v3-stable-linux-amd64.tgz # tar xvzf ngrok-v3-stable-linux-arm64.tgz

echo "Connect to https://dashboard.ngrok.com/signup to register a new authtoken."
./ngrok config add-authtoken 2I9RWezeoVYhdyruc4vpyeAumCN_5f8dcKLeqSDqZXmM1FL3D
