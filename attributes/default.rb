default['otter-mongodb']['package']['version'] = '3.2'
default['otter-mongodb']['package']['baseurl'] = "https://repo.mongodb.org/yum/redhat/$releasever/mongodb-org/#{node['otter-mongodb']['package']['version']}/x86_64/"
default['otter-mongodb']['package']['name'] = 'MongoDB Repository'
default['otter-mongodb']['package']['gpgkey'] = "https://www.mongodb.org/static/pgp/server-#{node['otter-mongodb']['package']['version']}.asc"
default['otter-mongodb']['package']['datadir'] = '/var/lib/mongo'
default['otter-mongodb']['package']['logdir'] = '/var/log/mongodb'
default['otter-mongodb']['package']['user'] = 'mongod'
default['otter-mongodb']['package']['group'] = 'mongod'
