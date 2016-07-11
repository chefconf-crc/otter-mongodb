#
# Cookbook Name:: otter-mongodb
# Recipe:: install_mongodb
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
#
include_recipe 'yum'

yum_repository "mongodb-org-#{node['otter-mongodb']['package']['version']}" do
  description node['otter-mongodb']['package']['description']
  baseurl node['otter-mongodb']['package']['baseurl']
  gpgkey node['otter-mongodb']['package']['gpgkey']
  gpgcheck true
  enabled true
  action :create
end

package 'mongodb-org'

directory node['otter-mongodb']['package']['datadir'] do
  action :create
  owner node['otter-mongodb']['package']['user']
  group node['otter-mongodb']['package']['group']
end

directory node['otter-mongodb']['package']['logdir'] do
  action :create
  owner node['otter-mongodb']['package']['user']
  group node['otter-mongodb']['package']['group']
end

service 'mongod' do
  action [ :enable, :start ]
end

