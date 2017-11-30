#
# Cookbook:: babu_cookbook
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
#

directory '/tmp/kb/kb1/' do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
 recursive true
end

file '/tmp/kb/sample.txt' do
  content 'this is babu'
  mode '0755'
  owner 'root'
  group 'root'
end

cookbook_file '/var/www/customers/public_html/index.php' do
  source ''
  owner 'web_admin'
  group 'web_admin'
  mode '0755'
  action :create
end
