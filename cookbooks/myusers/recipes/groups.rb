system_groups = search("groups", "platform:#{node['platform']}")

system_groups.each do |x|
  group x['id'] do
    members x['members']
    action :create
  end
end

