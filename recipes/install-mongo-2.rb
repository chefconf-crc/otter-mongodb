otter_mongod 'Install MongoDB' do
  action [ :install, :enable, :start ]
end
