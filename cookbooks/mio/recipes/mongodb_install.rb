cookbook_file "/root/mongodb-linux-i686-2.4.4.tgz" do 
  source "mongodb-linux-i686-2.4.4.tgz"
  mode 0777
  owner "root"
  group "root"
end

execute_file('mongodb_install')