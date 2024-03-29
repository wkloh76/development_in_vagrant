#!/usr/bin/env bash
sudo mkdir -p /usr/share/{prjtools/nodejs/electron,prjtools/nodejs/node,prjtools/pyenv,src}
sudo chown -R vagrant:vagrant /usr/share/{prjtools,src}
sudo apt update && sudo apt upgrade -y
sudo apt install -y tzdata nfs-common htop
sudo timedatectl set-timezone Asia/Kuala_Lumpur
echo "done -- General"
