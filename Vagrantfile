# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.

Vagrant.configure("2") do  |config| 
	config.vm.define :desktop do |desktop|
		desktop.vm.box = "myaylaci/xubuntu2004-desktop"
		# desktop.vm.box_version = "20210424.1.0"
		desktop.vm.define "xubuntu2004-desktop"
		desktop.vm.provider :virtualbox do |vb|
      vb.gui = true
		  vb.customize ["modifyvm", :id, "--memory", "4096", "--cpus", "2"]
		  vb.name = "xubuntu2004-desktop"
      
		end
		desktop.vm.boot_timeout = 300

		desktop.vm.network "private_network", ip: "192.168.56.110"
		# desktop.vm.network "public_network", ip:"xxx.xxx.xxx.xxx"
		desktop.vm.synced_folder "D:\\development\\prj", "/opt/share/prj"
    desktop.vm.synced_folder "D:\\wkloh_project", "/opt/share/dev"
		desktop.vm.synced_folder "D:\\development\\releases", "/opt/share/releases", owner: "root", group: "root", mount_options: ["dmode=755,fmode=664"]
		desktop.vm.provision "shell", inline: <<-'SHELL'
			sed -i 's/^#* *\(PermitRootLogin\)\(.*\)$/\1 yes/' /etc/ssh/sshd_config
			sed -i 's/^#* *\(PasswordAuthentication\)\(.*\)$/\1 yes/' /etc/ssh/sshd_config
			systemctl restart sshd.service
			echo -e "vagrant\nvagrant" | (passwd vagrant)
			echo -e "root\nroot" | (passwd root)
		SHELL
		desktop.vm.provision "shell", path: "general.sh"
		desktop.vm.provision "file", source: "sws\\sws.service", destination: "/sws/"
		desktop.vm.provision "file", source: "sws\\config.toml", destination: "/sws/"
		desktop.vm.provision "file", source: "sws\\public\\index.html", destination: "/sws/public/"
		desktop.vm.provision "file", source: "sws\\public\\50x.html", destination: "/sws/public/"
		desktop.vm.provision "file", source: "sws\\public\\404.html", destination: "/sws/public/"
		desktop.vm.provision "file", source: "sws\\public\\assets\\favicon.ico", destination: "/sws/public/assets/"
		desktop.vm.provision "file", source: "sws\\public\\assets\\main.css", destination: "/sws/public/assets/"
		desktop.vm.provision "file", source: "sws\\public\\assets\\main.js", destination: "/sws/public/assets/"
		desktop.vm.provision "shell", path: "swssetup.sh"
		# desktop.vm.provision "shell", path: "software.sh"
		desktop.vm.provision "shell", path: "development.sh"
		desktop.vm.provision "shell", path: "nodejs_python.sh", run:"always"
	end

	config.vm.define :server do |server|
		server.vm.box = "alvistack/ubuntu-24.04"
		server.vm.define "ubuntu2004_server"
		#server.disksize.size = '80GB'
		server.vm.provider :virtualbox do |svb|
		  svb.gui = false
		  svb.customize ["modifyvm", :id, "--memory", "4096", "--cpus", "4"]
		  svb.name = "ubuntu2004_server"		   
		end
		server.vm.boot_timeout = 300

		server.vm.network "private_network", ip: "192.168.56.111"    
		# server.vm.network "public_network", ip: "xxx.xxx.xxx.xxx"		
		server.vm.synced_folder "D:\\development\\prj", "/opt/share/prj"
		server.vm.synced_folder "D:\\wkloh_project", "/opt/share/dev"
		server.vm.synced_folder "D:\\development\\releases", "/opt/share/releases", owner: "root", group: "root", mount_options: ["dmode=755,fmode=664"]
		server.vm.provision "shell", inline: <<-'SHELL'
			sed -i 's/^#* *\(PermitRootLogin\)\(.*\)$/\1 yes/' /etc/ssh/sshd_config
			sed -i 's/^#* *\(PasswordAuthentication\)\(.*\)$/\1 yes/' /etc/ssh/sshd_config
			systemctl restart sshd.service
			echo -e "vagrant\nvagrant" | (passwd vagrant)
			echo -e "root\nroot" | (passwd root)
		SHELL
		server.vm.provision "shell", path: "general.sh"
		server.vm.provision "file", source: "sws\\sws.service", destination: "/sws/"
		server.vm.provision "file", source: "sws\\config.toml", destination: "/sws/"
		server.vm.provision "file", source: "sws\\public\\index.html", destination: "/sws/public/"
		server.vm.provision "file", source: "sws\\public\\50x.html", destination: "/sws/public/"
		server.vm.provision "file", source: "sws\\public\\404.html", destination: "/sws/public/"
		server.vm.provision "file", source: "sws\\public\\assets\\favicon.ico", destination: "/sws/public/assets/"
		server.vm.provision "file", source: "sws\\public\\assets\\main.css", destination: "/sws/public/assets/"
		server.vm.provision "file", source: "sws\\public\\assets\\main.js", destination: "/sws/public/assets/"
		server.vm.provision "shell", path: "swssetup.sh"
		server.vm.provision "shell", path: "nodejs_python.sh", run:"always"
	end

	config.vm.define :docker do |docker|
		docker.vm.box = "alvistack/ubuntu-24.04"
		docker.vm.define "ubuntu2004_docker"
		docker.vm.provider :virtualbox do |dvb|
		  dvb.gui = false
		  dvb.customize ["modifyvm", :id, "--memory", "8192", "--cpus", "4"]
		  dvb.name = "ubuntu2004_docker"		   
		end
		docker.vm.boot_timeout = 300

		docker.vm.network "private_network", ip: "192.168.56.112"
		# docker.vm.network "public_network", ip: "xxx.xxx.xxx.xxx"		
		docker.vm.synced_folder "D:\\development\\prj", "/opt/share/prj"
		docker.vm.synced_folder "D:\\wkloh_project", "/opt/share/dev"
    docker.vm.synced_folder "D:\\development\\releases", "/opt/share/releases", owner: "root", group: "root", mount_options: ["dmode=755,fmode=664"]
		docker.vm.provision "shell", inline: <<-'SHELL'
			sed -i 's/^#* *\(PermitRootLogin\)\(.*\)$/\1 yes/' /etc/ssh/sshd_config
			sed -i 's/^#* *\(PasswordAuthentication\)\(.*\)$/\1 yes/' /etc/ssh/sshd_config
			systemctl restart sshd.service
			echo -e "vagrant\nvagrant" | (passwd vagrant)
			echo -e "root\nroot" | (passwd root)
		SHELL
		docker.vm.provision "shell", path: "general.sh"
		docker.vm.provision "file", source: "sws\\sws.service", destination: "/sws/"
		docker.vm.provision "file", source: "sws\\config.toml", destination: "/sws/"
		docker.vm.provision "file", source: "sws\\public\\index.html", destination: "/sws/public/"
		docker.vm.provision "file", source: "sws\\public\\50x.html", destination: "/sws/public/"
		docker.vm.provision "file", source: "sws\\public\\404.html", destination: "/sws/public/"
		docker.vm.provision "file", source: "sws\\public\\assets\\favicon.ico", destination: "/sws/public/assets/"
		docker.vm.provision "file", source: "sws\\public\\assets\\main.css", destination: "/sws/public/assets/"
		docker.vm.provision "file", source: "sws\\public\\assets\\main.js", destination: "/sws/public/assets/"
		docker.vm.provision "shell", path: "swssetup.sh"
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
		win10.vm.boot_timeout = 300
		
		win10.vm.network "private_network", ip: "192.168.56.113"
		# win10.vm.network "public_network", ip: "xxx.xxx.xxx.xxx"	
		win10.vm.synced_folder "D:\\development\\prj", "C:\\opt\\share\\prj"
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
		win7.vm.boot_timeout = 300
		
		win7.vm.network "private_network", ip: "192.168.56.114"
		# win7.vm.network "public_network", ip: "xxx.xxx.xxx.xxx"	
		win7.vm.synced_folder "D:\\development\\prj", "C:\\opt\\share\\prj"
	end

	config.vm.define :test do |test|
		test.vm.box = "bento/ubuntu-22.04"
		test.vm.define "test_server"
		test.vm.provider :virtualbox do |tvb|
		  tvb.gui = false
		  tvb.customize ["modifyvm", :id, "--memory", "2048", "--cpus", "2"]
		  tvb.name = "test_server"		   
		end
		test.vm.boot_timeout = 300

		test.vm.network "private_network", ip: "192.168.56.115"
		# test.vm.network "public_network", ip: "xxx.xxx.xxx.xxx"	
		test.vm.synced_folder "D:\\test", "/opt/share/prj"
		test.vm.synced_folder "D:\\development\\prj", "/opt/share/dev"
		test.vm.provision "shell", path: "general.sh"
		test.vm.provision "shell", path: "swssetup.sh"
		test.vm.provision "shell", path: "nodejs_python.sh", run:"always"
	end

  config.vm.define :server1 do |server1|
		server1.vm.box = "bento/ubuntu-22.04"
		server1.vm.define "ubuntu2204_server"
		server1.vm.provider :virtualbox do |svb|
		  svb.gui = false
		  svb.customize ["modifyvm", :id, "--memory", "2048", "--cpus", "2"]
		  svb.name = "ubuntu2204_server"		   
		end
		server1.vm.boot_timeout = 300

		server1.vm.network "private_network", ip: "192.168.56.116"    
		# server.vm.network "public_network", ip: "xxx.xxx.xxx.xxx"		
		server1.vm.synced_folder "D:\\development\\prj", "/opt/share/prj"
		server1.vm.synced_folder "D:\\development\\prj_develop", "/opt/share/dev"
		server1.vm.synced_folder "D:\\development\\releases", "/opt/share/releases", owner: "root", group: "root", mount_options: ["dmode=755,fmode=664"]
		server1.vm.provision "shell", inline: <<-'SHELL'
			sed -i 's/^#* *\(PermitRootLogin\)\(.*\)$/\1 yes/' /etc/ssh/sshd_config
			sed -i 's/^#* *\(PasswordAuthentication\)\(.*\)$/\1 yes/' /etc/ssh/sshd_config
			systemctl restart sshd.service
			echo -e "vagrant\nvagrant" | (passwd vagrant)
			echo -e "root\nroot" | (passwd root)
		SHELL
		server1.vm.provision "shell", path: "general.sh"
		server1.vm.provision "file", source: "sws\\sws.service", destination: "/sws/"
		server1.vm.provision "file", source: "sws\\config.toml", destination: "/sws/"
		server1.vm.provision "file", source: "sws\\public\\index.html", destination: "/sws/public/"
		server1.vm.provision "file", source: "sws\\public\\50x.html", destination: "/sws/public/"
		server1.vm.provision "file", source: "sws\\public\\404.html", destination: "/sws/public/"
		server1.vm.provision "file", source: "sws\\public\\assets\\favicon.ico", destination: "/sws/public/assets/"
		server1.vm.provision "file", source: "sws\\public\\assets\\main.css", destination: "/sws/public/assets/"
		server1.vm.provision "file", source: "sws\\public\\assets\\main.js", destination: "/sws/public/assets/"
		server1.vm.provision "shell", path: "swssetup.sh"
		server1.vm.provision "shell", path: "nodejs20.sh", run:"always"
	end

end
