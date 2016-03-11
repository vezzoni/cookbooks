template 'mongodb.repo' do
  path "/etc/yum.repos.d/mongodb.repo"
  source 'mongodb.repo.erb'
end

template 'mongod.conf' do
  path "/etc/mongod.conf"
  source 'mongod.conf.erb'
end

package ['mongodb-org', 'mongodb-org-server'] do
  action :install
end

service 'mongod' do
  supports :restart => true, :reload => true, :status => true
  action [:enable, :start]
end
