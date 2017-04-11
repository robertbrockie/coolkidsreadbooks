# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.provider :virtualbox do |vb|
    vb.name = "Cool Kids Read Books - trusty64 - v1.0.0"
    vb.memory = 512 # MB
    vb.cpus = 1
  end

  config.vm.network :forwarded_port, guest: 3000, host: 3000
  config.vm.provision "shell", path: "provision.sh"
end