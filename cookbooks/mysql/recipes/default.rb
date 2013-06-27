%w{mysql mysql-server}.each do |package_name|
  package package_name do
    action :install
  end
end

service "mysqld" do
  action [ :enable, :start ]
end
