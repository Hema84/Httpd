#
# Cookbook Name:: httpd
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

file '/tmp/helloworld.txt' do
  content 'hello world! This is my first chef book'
  action :create
end

package node['package']['name'] do
  action :install
end

service node['package']['name'] do
  action [:enable, :start]
end
