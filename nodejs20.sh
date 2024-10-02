#!/usr/bin/env bash

sudo mkdir -p /usr/share/{prj,prjtools/nodejs/electron,prjtools/nodejs/node,prjtools/pyenv,prjsrc,releases}
sudo chown -R $(whoami):$(whoami) /usr/share/{prj,prjtools,prjsrc}
sudo apt update && sudo apt upgrade -y
# sudo apt install -y curl git cmake gcc g++ make tzdata build-essential \
#   apt-utils apt-transport-https network-manager iputils-ping libssl-dev libffi-dev \
#   libnss3-dev libdrm-dev libgbm-dev libasound-dev

sudo apt-get install -y ca-certificates gnupg
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg

NODE_MAJOR=20
echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_$NODE_MAJOR.x nodistro main" | sudo tee /etc/apt/sources.list.d/nodesource.list 
sudo apt update && sudo apt install -y nodejs
curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt update && sudo apt install -y yarn

yarn global add node-gyp node-gyp-build pkg
echo "done -- node"
