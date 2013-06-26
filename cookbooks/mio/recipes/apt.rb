cookbook_file "/etc/apt/sources.list" do
  source "sources.list"
  mode 0600
  owner "root"
  group "root"
end

execute "apt-get-update" do
  user "root"
  group "admin"
  command "apt-get update"
  action :run
end