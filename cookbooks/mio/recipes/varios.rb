package "vim" do
  action :install
end

cookbook_file "/root/.pgpass" do
  source "pgpass"
  mode 0600
  owner "root"
  group "root"
end
