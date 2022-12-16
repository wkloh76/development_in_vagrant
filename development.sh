#!/usr/bin/env bash
sudo update
sudo apt install dirmngr software-properties-common apt-transport-https curl -y
wget -qO - https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/-/raw/master/pub.gpg | gpg --dearmor | sudo dd of=/etc/apt/trusted.gpg.d/vscodium.gpg
echo 'deb https://paulcarroty.gitlab.io/vscodium-deb-rpm-repo/debs/ vscodium main' | sudo tee --append /etc/apt/sources.list.d/vscodium.list
sudo apt update 
sudo apt install codium -y
echo "done -- vscodium"
echo "done -- development"