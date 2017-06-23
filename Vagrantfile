# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.box = "centos/7"
  config.vm.box_check_update = false
  # expose DLUX
  config.vm.network "forwarded_port", guest: 8181, host: 8181
  # expose karaf
  config.vm.network "forwarded_port", guest: 8101, host: 8101

  config.vm.provider "virtualbox" do |vb|
    vb.gui = false
    vb.memory = "4096"
    vb.cpus = 2
  end

  config.vm.provision "shell", path: "install_puppet.sh"
  config.vm.provision "shell", inline: "puppet module install opendaylight-opendaylight --version 4.0.1"

  config.vm.provision "puppet" do |puppet|
      puppet.manifests_path = "puppet/manifests/"
      puppet.manifest_file = "install_odl.pp"
      puppet.options = "--verbose --debug"
  end
end
