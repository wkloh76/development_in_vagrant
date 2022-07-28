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
		desktop.vm.boot_timeout = 300

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
		server.vm.provider :virtualbox do |svb|
		  svb.gui = false
		  svb.customize ["modifyvm", :id, "--memory", "2048", "--cpus", "2"]
		  svb.name = "ubuntu2004_server"		   
		end
		
		server.vm.network "private_network", ip: "192.168.56.111"
		# server.vm.network "public_network", ip: "xxx.xxx.xxx.xxx"
		# server.vm.synced_folder "D:\\prj", "/opt/share/prj"

		server.vm.provision "shell", path: "general.sh"
		server.vm.provision "shell", path: "nodejs_python.sh", run:"always"
	end

	config.vm.define :docker do |docker|
		docker.vm.box = "peru/ubuntu-20.04-server-amd64"
		docker.vm.define "ubuntu2004_docker"
		docker.vm.provider :virtualbox do |dvb|
		  dvb.gui = false
		  dvb.customize ["modifyvm", :id, "--memory", "2048", "--cpus", "2"]
		  dvb.name = "ubuntu2004_docker"		   
		end
		
		docker.vm.network "private_network", ip: "192.168.56.112"
		# docker.vm.network "public_network", ip: "xxx.xxx.xxx.xxx"
		# docker.vm.synced_folder "D:\\prj", "/opt/share/prj"
		docker.vm.provision "shell", path: "general.sh"
		docker.vm.provision "shell", path: "docker.sh"
	end

	config.vm.define :win10 do |win10|
		win10.vm.box = "breeze/win10-edge"
		win10.vm.define "win10pro"
		win10.vm.provider :virtualbox do |win10vb|
			win10vb.gui = true
			win10vb.memory = "4096"
    		win10vb.cpus = 2
			win10vb.customize ["modifyvm", :id,
				"--audiocontroller", "hda",
				"--audioin", "on",
				"--audioout", "on",
				'--accelerate3d', 'on',
				'--accelerate2dvideo', 'on',
				'--vram', '256',
				'--clipboard', 'bidirectional']
			win10vb.name = "win10pro"
		end
		
		win10.vm.network "private_network", ip: "192.168.56.113"
		# win10.vm.network "public_network", ip: "xxx.xxx.xxx.xxx"
		# win10.vm.synced_folder "D:\\development\\prj", "C:\\opt\\share\\prj"
	end

	config.vm.define :win7 do |win7|
		win7.vm.box = "breeze/win7-ie11"
		win7.vm.define "win7pro"
		win7.vm.provider :virtualbox do |win7vb|
			win7vb.gui = true
			win7vb.memory = "4096"
    		win7vb.cpus = 2
			win7vb.customize ["modifyvm", :id,
				"--audiocontroller", "hda",
				"--audioin", "on",
				"--audioout", "on",
				'--accelerate3d', 'on',
				'--accelerate2dvideo', 'on',
				'--vram', '256',
				'--clipboard', 'bidirectional']
			win7vb.name = "win7pro"
		end
		
		win7.vm.network "private_network", ip: "192.168.56.114"
		# win7.vm.network "public_network", ip: "xxx.xxx.xxx.xxx"
		#win7.vm.synced_folder "D:\\prj", "C:\\opt\\share\\prj"
	end
end
