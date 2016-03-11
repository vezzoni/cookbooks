package 'rabbitmq-server' do
  action :install
end

service 'rabbitmq-server' do
  supports :restart => true, :reload => true, :status => true
  action [:enable, :start]
end
