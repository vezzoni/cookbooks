package 'redis' do
  action :install
end

template 'redis.conf' do
  path "/etc/redis.conf"
  source 'redis.conf.erb'
end

service 'redis' do
  action [:enable, :start]
end

template 'redis-sentinel.conf' do
  path "/etc/redis-sentinel.conf"
  source 'redis-sentinel.conf.erb'
end

template 'redis-sentinel' do
  owner "root"
  group "root"
  mode 0755
  path "/etc/init.d/redis-sentinel"
  source 'redis-sentinel.erb'
  notifies :run, 'execute[create_init-script]', :immediate
end

execute "create_init-script" do
        command "sudo chkconfig redis-sentinel on"
        action :run
end

execute "start-script" do
        command "sudo service redis-sentinel start"
        action :run
end
