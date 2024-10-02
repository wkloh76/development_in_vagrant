#!/usr/bin/env bash
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common gnupg-agent
sudo apt remove -y docker docker-engine docker.io containerd runc
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/docker-archive-keyring.gpg
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt update && sudo apt install -y docker-ce docker-ce-cli containerd.io
sudo usermod -aG docker vagrant

# curl -s https://api.github.com/repos/docker/compose/releases/latest | grep browser_download_url | grep docker-compose-linux-x86_64 | cut -d '"' -f 4 | wget -qi -
# sudo chmod +x docker-compose-linux-x86_64
# sudo mv docker-compose-linux-x86_64 /usr/local/bin/docker-compose
# rm -f *.sha256


# curl -s https://api.github.com/repos/docker/compose/releases/latest | grep browser_download_url | grep docker-compose-linux-armv7 | cut -d '"' -f 4 | wget -qi -
# sudo chmod +x docker-compose-linux-armv7
# sudo mv docker-compose-linux-armv7 /usr/local/bin/docker-compose
