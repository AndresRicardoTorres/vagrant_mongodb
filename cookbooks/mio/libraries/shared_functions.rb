class Chef
  class Recipe
    
   def execute_file(file)    
    Chef::Log.debug("Copy and exec #{file} ")
    
    cookbook_file "/root/"+file do 
      source file
      mode 0777
      owner "root"
      group "root"
    end

    execute "run_master" do
      user "root"
      command "sh /root/"+file
      action :run
    end
   end
   
   
   def copy_file(file)    
    Chef::Log.debug("Copy #{file} ")
    
    cookbook_file "/root/"+file do 
      source file
      mode 0777
      owner "root"
      group "root"
    end
   end
   
  end
end