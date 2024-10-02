#!/usr/bin/env bash
FILE="/home/nodepythonstatus"
NODE_MAJOR=20
# while IFS= read -r line
# do
#   echo "$line"
# done < "$input"

if [ -f "$FILE" ]; then
  echo "$FILE exists."
else
  sudo apt update && sudo apt upgrade -y
  sudo apt install -y curl git cmake gcc g++ make tzdata build-essential \
    apt-utils apt-transport-https network-manager iputils-ping libssl-dev libffi-dev \
    ca-certificates gnupg
  
  sudo apt install -y python3-pip
  sudo mkdir -p /etc/apt/keyrings
  curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg
  echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_$NODE_MAJOR.x nodistro main" | sudo tee /etc/apt/sources.list.d/nodesource.list  
  sudo apt update && sudo apt install -y nodejs

  # curl -fsSL https://bun.sh/install |  bash
  # curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
  # echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
  # sudo apt update && sudo apt install -y yarn

  # yarn global add node-gyp node-gyp-build pkg
  # curl -fsSL https://bun.sh/install | bash
  
  echo "done -- node"

  # sudo echo "alias python=python3.8" >>/home/vagrant/.bashrc

  # python3.8 -m venv /usr/share/prjtools/pyenv
  # Active virtual environment
  # source /usr/share/prjtools/pyenv/bin/activate
  # (pyenv) root@242c1d718d69:/usr/share/prj#
  # Deactive virtual environment
  # deactivate
  # root@242c1d718d69:/usr/share/prj#
  # sudo chown -R vagrant:vagrant /usr/share/prjtools/pyenv
  # source /home/vagrant/.bashrc
  # echo "done -- python virtual environment"

  echo "done -- nodejs"

  sudo echo "true" >>/home/nodepythonstatus
fi
