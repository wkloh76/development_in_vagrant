#!/usr/bin/env bash
FILE="/home/nodepythonstatus"
# while IFS= read -r line
# do
#   echo "$line"
# done < "$input"

if [ -f "$FILE" ]; then
    echo "$FILE exists."
else
	sudo apt update && sudo apt upgrade -y
    sudo apt install -y curl git cmake gcc g++ make tzdata build-essential \
    apt-utils apt-transport-https network-manager iputils-ping setserial libpcsclite1 \
    libpcsclite-dev libacsccid1 pcscd pcsc-tools libssl-dev libffi-dev
    #python3.9 python3.9-venv python3.9-dev python3-pip
	sudo apt install -y python3.8-venv python3.8-dev python3-pip
    curl -sL https://deb.nodesource.com/setup_16.x | sudo bash -
    sudo apt update && sudo apt install -y nodejs
    curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
    sudo apt update && sudo apt install -y yarn

    yarn global add node-gyp  node-gyp-build pkg
    echo "done -- node"
    
    sudo echo "alias python=python3.8" >> /home/vagrant/.bashrc   
       
    python3.8 -m venv /usr/share/prjtools/pyenv
    # Active virtual environment
    # source /usr/share/prjtools/pyenv/bin/activate
    # (pyenv) root@242c1d718d69:/usr/share/prj#
    # Deactive virtual environment
    # deactivate
    # root@242c1d718d69:/usr/share/prj#
    sudo chown -R vagrant:vagrant /usr/share/prjtools/pyenv    
    source /home/vagrant/.bashrc
    echo "done -- python virtual environment"
	
	echo "done -- nodejs and python3.9"
	
	
    sudo echo "true" >> /home/nodepythonstatus
fi