template 'datastax.repo' do
  path "/etc/yum.repos.d/datastax.repo"
  source 'datastax.repo.erb'
end

package 'dsc20' do
  action :install
end

service 'cassandra' do
  supports :restart => true, :reload => true, :status => true
  action [:enable, :start]
end
