template "/etc/hostname" do
	source "hostname.erb"
	mode 0644
	owner "root"
	group "admin"
	variables(
		:hostname_ => "#{node[:host_name]}"
	)
end

execute "hostname-start" do
	user "root"
	group "admin"
	command "hostname -F /etc/hostname"
	action :run
end
