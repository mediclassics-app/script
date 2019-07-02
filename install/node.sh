#!/bin/bash

echo "Install node with nvm"
# set curl as insecure mode first
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
# chose desired node version
VERSION="10.16.0"
# install node
nvm install ${VERSION}
nvm use ${VERSION}
