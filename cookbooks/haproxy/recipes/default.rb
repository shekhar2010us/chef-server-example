package "haproxy" do
  action :install
end

allwebservers = search('node', 'policy_name:company_web AND policy_group:prod')

template '/etc/haproxy/haproxy.cfg' do
  source 'haproxy.cfg.erb'
  owner "root"
  group "root"
  mode 0644
  variables(
    :webservers => allwebservers
  )
  notifies :restart, "service[haproxy]"
end

#template "/etc/default/haproxy" do
#  source "haproxy-default.erb"
#  owner "root"
#  group "root"
#  mode 0644
#end

service "haproxy" do
  supports :restart => true, :status => true, :reload => true
  action [:enable, :start]
end

