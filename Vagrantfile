# -*- mode: ruby -*-
# vi: set ft=ruby :

##network :bridged

Vagrant::Config.run do |config|	
	config.vm.define :node1 do |node|
		node.vm.box = "precise32"
		node.vm.network :hostonly, "192.168.1.111", :netmask => "255.255.255.0"
		node.vm.customize ["modifyvm", :id, "--memory", 128, "--name", "mongo-node1", "--cpus", 1]
		node.vm.host_name = "mongo-node1"
		node.vm.provision :chef_solo do |chef|
			chef.cookbooks_path = "cookbooks"
			chef.add_recipe "mio::apt"
			chef.add_recipe "mio::mongodb_master"
		end
	end
	config.vm.define :node2 do |node|
		node.vm.box = "precise32"
		node.vm.network :hostonly, "192.168.1.112", :netmask => "255.255.255.0"
		node.vm.customize ["modifyvm", :id, "--memory", 128, "--name", "mongo-node2", "--cpus", 1]
		node.vm.host_name = "mongo-node2"
		node.vm.provision :chef_solo do |chef|
			chef.cookbooks_path = "cookbooks"
			chef.add_recipe "mio::apt"
			chef.add_recipe "mio::mongodb_slave"
		end
	end
	config.vm.define :node3 do |node|
		node.vm.box = "precise32"
		node.vm.network :hostonly, "192.168.1.113", :netmask => "255.255.255.0"
		node.vm.customize ["modifyvm", :id, "--memory", 128, "--name", "mongo-master", "--cpus", 1]
		node.vm.host_name = "mongo-node3"
		node.vm.provision :chef_solo do |chef|
			chef.cookbooks_path = "cookbooks"
			chef.add_recipe "mio::apt"
			chef.add_recipe "mio::mongodb_slave"
		end
	end
end



