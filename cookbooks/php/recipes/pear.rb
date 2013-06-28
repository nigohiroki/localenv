%w{pear.phpunit.de components.ez.no pear.symfony-project.com}.each do |chan|
  php_pear_channel chan do
    action [:discover, :update]
  end
end
