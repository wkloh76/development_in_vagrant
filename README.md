# README

## Objective
---
 * Create a clean linux environment/platform for developers without dirtying your legacy system environment.
 * Suitable for Linux, Mac OS and Windows.

## Hardware Requirement
---
 * Quad core cpu 8G RAM Windows 10
   - Able run 1 image at the same time.
 * Quad core cpu 16G RAM Windows 10
   - Able run more than 1 image at the same time.  
## Software installation and setup by sequence
---
 * Virtualbox version 6.1.32
   - Download `VirtualBox 6.1.32 platform packages` and `VirtualBox 6.1.32 Oracle VM VirtualBox Extension Pack`
   - After success install virtualbox then double click the extension pack will automatically install into the virtualbox.
   - Software [link](https://www.virtualbox.org/wiki/Downloads)

 * Vagrant
   - Download and install
   - Software [link](https://www.vagrantup.com/downloads)

 * Development in vagrant
   - git clone 

## Vagrant image setup for ubuntu server and desktop (development)
---

### Command start/setup
 - Ubuntu desktop
   ```
   vagrant up desktop 
   ```
 - Ubuntu server
   ``` 
   vagrant up server
   ```   

### Command shutdown 
 - Ubuntu desktop
   ```
   vagrant halt desktop
   ```
 - Ubuntu server
   ``` 
   vagrant halt server
   ```
 
### Command ssh
 - Ubuntu desktop
   ```
   vagrant ssh desktop
   ```
 - Ubuntu server
   ``` 
   vagrant ssh server
   ```

## Vagrantfile Explaination
---

### Mount multi folders from host to virtualbox
1. Desktop configuration
  - Just alter/append new line base on defination`desktop.vm.synced_folder` `"host source"` `,  vb path`.
    ```
    
    desktop.vm.synced_folder "D:\\prj", "/opt/share/prj"
    ```
2. Server configuration
  - Just alter/append new line base on defination`server.vm.synced_folder` `"host source"` `,  vb path`.
    ```
   
    server.vm.synced_folder "D:\\prj", "/opt/share/prj"
    ```

### privision shell external execution method
- Run one time during setup
  ```
  desktop.vm.provision "shell", path: "software.sh"
  ```
- Run everytime when boot up
  ```
  desktop.vm.provision "shell", path: "nodejs_python.sh", run:"always"
  ```
 