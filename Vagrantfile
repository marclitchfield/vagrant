# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

unless Vagrant.has_plugin?("vagrant-hostmanager")
  raise 'vagrant-hostmanager not installed. please run "vagrant plugin install vagrant-hostmanager"'
end

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu/trusty64"

  config.hostmanager.enabled = true
  config.hostmanager.manage_host = true
  config.hostmanager.ignore_private_ip = false
  config.hostmanager.include_offline = true

  config.vm.define "dev" do |node|
    node.vm.provision :shell, path: "dev/bootstrap.sh"
    node.vm.network "private_network", ip: "192.168.50.10" 
    node.vm.hostname = "vagrant-dev-box"
  end

  config.vm.define "web" do |node|
    node.vm.provision :shell, path: "web/bootstrap.sh"
    node.vm.network "private_network", ip: "192.168.50.20" 
    node.vm.hostname = "vagrant-web-box"
  end
end
