#!/usr/bin/env bash
sudo apt install -y fonts-liberation
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo rm -rf google-chrome-stable_current_amd64.deb
echo "done -- chromium browser"
echo "done -- software"