# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|

  config.vm.box = "CentOS-6.3"
  config.vm.network :hostonly, "192.168.33.15"

  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = "cookbooks"
    chef.add_recipe "selinux::disabled"
    chef.add_recipe "iptables"
    chef.add_recipe "yum::remi"
    chef.add_recipe "web"
    chef.add_recipe "git"
    chef.add_recipe "php"
    chef.add_recipe "mysql"
  end

end
