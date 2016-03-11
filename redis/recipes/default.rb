package 'redis' do
  action :install
end

template 'redis.conf' do
  path "/etc/redis.conf"
  source 'redis.conf.erb'
end

template 'redis-sentinel.conf' do
  path "/etc/redis-sentinel.conf"
  source 'redis-sentinel.conf.erb'
end

service 'redis' do
  action [:enable, :start]
end

cookbook_file "/etc/init.d/redis-sentinel" do
        owner "root"
        group "root"
        mode 0755
        source "etc/init.d/redis-sentinel"
        action :create
        notifies :run, 'execute[create_init-script]', :delayed
end

execute "create_init-script" do
        command "sudo chkconfig redis-sentinel on"
        action :run
end

service 'redis-sentinel' do
  supports :status => true, :restart => true, :reload => true
  action [:enable, :start]
end

