#!/usr/bin/env bash
sudo mkdir -p /usr/share/{prjtools/nodejs/electron,prjtools/nodejs/node,prjtools/pyenv,src}
sudo chown -R vagrant:vagrant /usr/share/{prjtools,src}
sudo apt update
sudo apt install -y tzdata
sudo timedatectl set-timezone Asia/Kuala_Lumpur
echo "done -- General"
