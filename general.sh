#!/usr/bin/env bash
userid=$(whoami)
# Backend
sudo mkdir -p /usr/share/{prj,prjtools/nodejs/electron,prjtools/nodejs/node,prjtools/pyenv,prjsrc,releases}
sudo mkdir -p /opt/share/prj/{2rd_system_prj,2rd_system_components,2rd_system_deployment,2rd_system_development,2rd_system_core,2rd_system_atom,2rd_system_molecule,2rd_system_organism,2rd_system_template,2rd_system_page,2rd_system_frontend}
sudo mkdir -p /opt/share/releases/{2rd_system_components,2rd_system_development,2rd_system_core,2rd_system_atom,2rd_system_molecule,2rd_system_organism,2rd_system_template,2rd_system_page}

# Frontend and SWS
sudo mkdir -p /sws/public/{assets,gitea/2rd_system_frontend,npm}

if [ "$userid" == "root" ]
then  
   sudo chown -R vagrant:vagrant /usr/share/{prj,prjtools,prjsrc}
   sudo chown -R vagrant:vagrant /opt/share/prj
   sudo chown -R vagrant:vagrant /sws
else
   sudo chown -R $(whoami):$(whoami) /usr/share/{prj,prjtools,prjsrc}
   sudo chown -R $(whoami):$(whoami) /opt/share/prj
   sudo chown -R $(whoami):$(whoami) /sws
fi

# Force no prompt in apt-get upgrade or apt-get dist-upgrade
function runAptGetUpgrade()
{
   sudo apt update -y
   DEBIAN_FRONTEND='noninteractive' apt-get -y -o Dpkg::Options::='--force-confdef' -o Dpkg::Options::='--force-confold' upgrade
   DEBIAN_FRONTEND='noninteractive' apt-get -y -o Dpkg::Options::='--force-confdef' -o Dpkg::Options::='--force-confold' dist-upgrade

   apt-get autoremove -y
   apt-get clean
   apt-get autoclean
}

runAptGetUpgrade
sudo apt install -y tzdata nfs-common htop curl imagemagick
sudo timedatectl set-timezone Asia/Kuala_Lumpur
echo "done -- General"
