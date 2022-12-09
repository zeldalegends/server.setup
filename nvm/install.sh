#!/bin/bash

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.2/install.sh | bash

echo Availabe commands:
echo
echo Check last LTS version
echo "nvm version-remote --lts"
echo Update Node.js and upgrade all packages
echo "nvm install 'lts/*' --reinstall-packages-from=current"
