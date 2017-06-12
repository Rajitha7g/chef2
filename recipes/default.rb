#
# Cookbook:: apache
# Recipe:: default
package 'apache2' do
         package_name 'httpd'
         action :install
end

service 'apache2' do
         service_name 'httpd'
         action [:start, :enable]
end

template 'default www' do
      path '/var/www/html/index.html'
      content '<HTML>
        Hello 
            </HTML>
end

