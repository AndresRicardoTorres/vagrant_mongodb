cookbook_file "/root/mongodb-linux-i686-2.0.6.tgz" do 
  source "mongodb-linux-i686-2.0.6.tgz"
  mode 0777
  owner "root"
  group "root"
end

cookbook_file "/root/mongo_slave.sh" do 
  source "mongo_slave.sh"
  mode 0777
  owner "root"
  group "root"
end

execute "run_master" do
  user "root"
  command "sh /root/mongo_slave.sh"
  action :run
end