#!/bin/bash

apt-get install -y python-is-python3 python3-pip build-essential libssl-dev \
    apt-transport-https ca-certificates gnupg

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh >nvm_installer.sh
chmod +x nvm_installer.sh
su $USERNAME -- nvm_installer.sh
rm nvm_installer.sh

su - $USERNAME -c '. $HOME/.nvm/nvm.sh && nvm install 14.17.1'
