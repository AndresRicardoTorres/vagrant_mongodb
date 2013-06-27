execute_file('mongodb_mongos')
file = 'addShard.js'
cookbook_file "/root/"+file do 
      source file
      mode 0777
      owner "root"
      group "root"
end