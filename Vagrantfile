# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.

Vagrant.configure("2") do  |config| 
	config.vm.define :desktop do |desktop|
		desktop.vm.box = "myaylaci/xubuntu2004-desktop"
		desktop.vm.define "xubuntu2004-desktop"
		desktop.vm.provider :virtualbox do |vb|
		  vb.customize ["modifyvm", :id, "--memory", "2048", "--cpus", "2"]
		  vb.name = "xubuntu2004-desktop"	
		end  
		desktop.vm.network "private_network", ip: "192.168.56.110"
		# desktop.vm.network "public_network", ip:"xxx.xxx.xxx.xxx"
		# desktop.vm.synced_folder "D:\\prj", "/opt/share/prj"

		desktop.vm.provision "shell", path: "general.sh"
		desktop.vm.provision "shell", path: "docker.sh"
		desktop.vm.provision "shell", path: "software.sh"
		desktop.vm.provision "shell", path: "nodejs_python.sh", run:"always"
	end

	config.vm.define :server do |server|
		server.vm.box = "peru/ubuntu-20.04-server-amd64"
		server.vm.define "ubuntu2004_server"
		server.vm.provider :virtualbox do |vb|
		  vb.gui = false
		  vb.customize ["modifyvm", :id, "--memory", "2048", "--cpus", "2"]
		  vb.name = "ubuntu2004_server"		   
		end
		
		server.vm.network "private_network", ip: "192.168.56.111"
		#server.vm.network "public_network", ip: "192.169.0.98"
		# server.vm.synced_folder "D:\\prj", "/opt/share/prj"		
	  
		server.vm.provision "shell", path: "general.sh"
		server.vm.provision "shell", path: "docker.sh"
		server.vm.provision "shell", path: "nodejs_python.sh", run:"always"
	end
end
