# -*- mode: ruby -*-
# vi: set ft=ruby :

##network :bridged

Vagrant::Config.run do |config|
	
	
	config.vm.define :node6 do |node|
		node.vm.box = "precise32"
		node.vm.network :hostonly, "192.168.1.106", :netmask => "255.255.255.0"
		node.vm.customize ["modifyvm", :id, "--memory", 128, "--name", "mongo-rs1-1", "--cpus", 1]
		node.vm.host_name = "mongo-rs1-1"
		node.vm.provision :chef_solo do |chef|
			chef.cookbooks_path = "cookbooks"			
			chef.add_recipe "mio::mongodb_install"
			chef.add_recipe "mio::mongodb_replicaSet1"
		end
	end
	config.vm.define :node7 do |node|
		node.vm.box = "precise32"
		node.vm.network :hostonly, "192.168.1.107", :netmask => "255.255.255.0"
		node.vm.customize ["modifyvm", :id, "--memory", 128, "--name", "mongo-rs1-2", "--cpus", 1]
		node.vm.host_name = "mongo-rs1-2"
		node.vm.provision :chef_solo do |chef|
			chef.cookbooks_path = "cookbooks"			
			chef.add_recipe "mio::mongodb_install"
			chef.add_recipe "mio::mongodb_replicaSet1"
		end
	end
	
	config.vm.define :node8 do |node|
		node.vm.box = "precise32"
		node.vm.network :hostonly, "192.168.1.108", :netmask => "255.255.255.0"
		node.vm.customize ["modifyvm", :id, "--memory", 128, "--name", "mongo-rs1-3", "--cpus", 1]
		node.vm.host_name = "mongo-rs1-3"
		node.vm.provision :chef_solo do |chef|
			chef.cookbooks_path = "cookbooks"			
			chef.add_recipe "mio::mongodb_install"
			chef.add_recipe "mio::mongodb_replicaSet1"
		end
	end
	
	
	config.vm.define :node9 do |node|
		node.vm.box = "precise32"
		node.vm.network :hostonly, "192.168.1.109", :netmask => "255.255.255.0"
		node.vm.customize ["modifyvm", :id, "--memory", 128, "--name", "mongo-rs2-1", "--cpus", 1]
		node.vm.host_name = "mongo-rs2-1"
		node.vm.provision :chef_solo do |chef|
			chef.cookbooks_path = "cookbooks"			
			chef.add_recipe "mio::mongodb_install"
			chef.add_recipe "mio::mongodb_replicaSet2"
		end
	end
	
	config.vm.define :node10 do |node|
		node.vm.box = "precise32"
		node.vm.network :hostonly, "192.168.1.110", :netmask => "255.255.255.0"
		node.vm.customize ["modifyvm", :id, "--memory", 128, "--name", "mongo-rs2-2", "--cpus", 1]
		node.vm.host_name = "mongo-rs2-2"
		node.vm.provision :chef_solo do |chef|
			chef.cookbooks_path = "cookbooks"			
			chef.add_recipe "mio::mongodb_install"
			chef.add_recipe "mio::mongodb_replicaSet2"
		end
	end
	
	
	config.vm.define :node11 do |node|
		node.vm.box = "precise32"
		node.vm.network :hostonly, "192.168.1.111", :netmask => "255.255.255.0"
		node.vm.customize ["modifyvm", :id, "--memory", 128, "--name", "mongo-rs2-3", "--cpus", 1]
		node.vm.host_name = "mongo-rs2-3"
		node.vm.provision :chef_solo do |chef|
			chef.cookbooks_path = "cookbooks"			
			chef.add_recipe "mio::mongodb_install"
			chef.add_recipe "mio::mongodb_replicaSet2"
		end
	end
	
	config.vm.define :node1 do |node|
		node.vm.box = "precise32"
		node.vm.network :hostonly, "192.168.1.101", :netmask => "255.255.255.0"
		node.vm.customize ["modifyvm", :id, "--memory", 128, "--name", "mongo-config1", "--cpus", 1]
		node.vm.host_name = "mongo-config1"
		node.vm.provision :chef_solo do |chef|
			chef.cookbooks_path = "cookbooks"			
			chef.add_recipe "mio::mongodb_install"
			chef.add_recipe "mio::mongodb_configsvr"
		end
	end
	config.vm.define :node2 do |node|
		node.vm.box = "precise32"
		node.vm.network :hostonly, "192.168.1.102", :netmask => "255.255.255.0"
		node.vm.customize ["modifyvm", :id, "--memory", 128, "--name", "mongo-config2", "--cpus", 1]
		node.vm.host_name = "mongo-config1"
		node.vm.provision :chef_solo do |chef|
			chef.cookbooks_path = "cookbooks"			
			chef.add_recipe "mio::mongodb_install"
			chef.add_recipe "mio::mongodb_configsvr"
		end
	end
	config.vm.define :node3 do |node|
		node.vm.box = "precise32"
		node.vm.network :hostonly, "192.168.1.103", :netmask => "255.255.255.0"
		node.vm.customize ["modifyvm", :id, "--memory", 128, "--name", "mongo-config3", "--cpus", 1]
		node.vm.host_name = "mongo-config1"
		node.vm.provision :chef_solo do |chef|
			chef.cookbooks_path = "cookbooks"			
			chef.add_recipe "mio::mongodb_install"
			chef.add_recipe "mio::mongodb_configsvr"
		end
	end
	
	config.vm.define :node4 do |node|
		node.vm.box = "precise32"
		node.vm.network :hostonly, "192.168.1.104", :netmask => "255.255.255.0"
		node.vm.customize ["modifyvm", :id, "--memory", 128, "--name", "mongo-front1", "--cpus", 1]
		node.vm.host_name = "mongo-front1"
		node.vm.provision :chef_solo do |chef|
			chef.cookbooks_path = "cookbooks"			
			chef.add_recipe "mio::mongodb_install"
			chef.add_recipe "mio::mongodb_mongos"
		end
	end
	config.vm.define :node5 do |node|
		node.vm.box = "precise32"
		node.vm.network :hostonly, "192.168.1.105", :netmask => "255.255.255.0"
		node.vm.customize ["modifyvm", :id, "--memory", 128, "--name", "mongo-front2", "--cpus", 1]
		node.vm.host_name = "mongo-front2"
		node.vm.provision :chef_solo do |chef|
			chef.cookbooks_path = "cookbooks"
			chef.add_recipe "mio::mongodb_install"
			chef.add_recipe "mio::mongodb_mongos"
		end
	end
	
end



