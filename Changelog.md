# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/), 
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unrealease]

### Added

* Add nfs client and htp package in `general.sh`. Completed on 2022-05-10
* Add new vm `ubuntu server` to support and only docker in `Vagrantfile`. Completed on 2022-06-10
* Add new vm `win7_ie11` and `win10-edge` to `Vagrantfile`. Completed on 2022-06-10
* ~~~Build vagrantfile to support more than one machine. Done on 2022-01-13~~~
* ~~~Change the vagrant private IP range to "192.168.56" as recommended by virtualbox. Done on 2022-01-13~~~

### Changed

* Rewrite changelog present method. Completed on 2022-07-28  
* Upgrade docker-compose to version 2.6.0 in `docker.sh`. Completed on 2022-06-10
* ~~~Add new package in `general.sh` and `nodejs_python.sh` . Completed on 2022-05-10~~~

### Deprecated 

### Removed 

### Fixed 

* software.sh execute error in vm desktop mode. 
  + The vscode installation problem, change to other way to solve it. Done on 2022-03-08
  + The google-chrome missing `fonts-liberation` package dependancies. Done on 2022-03-08 
  + "nodejs_python.sh" relay on curl package to install nodejs and yarn. Completed on 2022-06-10
  + Define specifiy vm name for each unique machine in `Vagrantfile` file. Completed on 2022-06-10 

* ~~~Add `sudo` to docker_devenv.sh and nodejs_python.sh to prevent write permission issue during update process to OS `/home` folder. Done on 2022-01-13~~~
* ~~~Disable Vagrantgile line 37 `# server.ssh.insert_key= false`. This will cause remote ssh failure. Done on 2022-02-21~~~
* ~~~Disable Vagrantgile line 38 `# server.vm.network "public_network", ip: "192.169.0.98"` public ip. Done on 2022-02-28~~~
* ~~~software.sh execute error in vm desktop mode.~~~
  + ~~~The vscode installation problem, change to other way to solve it. Done on 2022-03-08~~~
  + ~~~The google-chrome missing `fonts-liberation` package dependancies. Done on 2022-03-08~~~ 
### Security
