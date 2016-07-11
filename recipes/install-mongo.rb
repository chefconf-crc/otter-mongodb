include_recipe 'yum'

yum_repository 'mongodb-org' do
  description 'MongoDB Repo'
  baseurl 'https://repo.mongodb.org/yum/redhat/$releasever/mongodb-org/3.2/x86_64/'
  gpgcheck true
  gpgkey 'https://www.mongodb.org/static/pgp/server-3.2.asc'
  enabled true
  action :create
end

package 'mongodb-org'
#package 'mongodb-org-server'
#package 'mongodb-org-mongos'
#package 'mongodb-org-shell'
#package 'mongodb-org-tools'

service 'mongod' do
  action [ :enable, :start ]
end
