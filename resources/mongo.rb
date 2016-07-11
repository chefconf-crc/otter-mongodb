resource_name :otter_mongod

property :version, String, default: '3.2'

action :install do

  yum_repository 'mongodb-org' do
    description 'MongoDB Repo'
    baseurl "https://repo.mongodb.org/yum/redhat/$releasever/mongodb-org/#{version}/x86_64/"
    gpgcheck true
    gpgkey "https://www.mongodb.org/static/pgp/server-#{version}.asc"
    enabled true
    action :create
  end

  package 'mongodb-org'

end

action :start do
  service 'mongod' do
    action :start
  end
end

action :enable do
  service 'mongod' do
    action :enable
  end
end
