include_recipe "apache2"

apache_module "rewrite"

template "localenv.jp" do
  path "#{node[:apache][:dir]}/sites-available/localenv.jp"
  source "localenv.jp.erb"
  owner "apache"
  group "apache"
  mode "0644"
end

execute "site-enabled" do
  command "a2ensite localenv.jp"
  notifies :restart, resources(:service => "apache2")
end

service "iptables" do
  action :stop
end

