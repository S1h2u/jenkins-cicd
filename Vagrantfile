# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/focal64"
  config.vm.network "forwarded_port", guest: 8000, host: 8000
  config.vbguest.auto_update = true
  config.vm.provision "shell", inline: <<-SHELL
    sudo apt-get update
    sudo apt-get install -y python3 python3-pip
    sudo pip3 install http.server
    echo '#!/bin/bash' > /vagrant/run.sh
    echo 'cd /vagrant' >> /vagrant/run.sh
    echo 'python3 server.py' >> /vagrant/run.sh
    chmod +x /vagrant/run.sh
  SHELL
end

