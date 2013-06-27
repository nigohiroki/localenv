%w{php php-devel php-pear php-mbstring php-gd php-mysql php}.each do |php_pack|
  package php_pack do
    action  :install
  end
end
