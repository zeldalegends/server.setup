#!/bin/bash

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.2/install.sh | bash

echo Press Enter to install Node-js $(nvm version-remote --lts) and upgrade all packages...
read key

nvm install 'lts/*' --reinstall-packages-from=current