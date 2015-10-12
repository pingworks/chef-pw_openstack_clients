#
# Cookbook Name:: chef-pw_openstackclients
# Recipe:: default
#
# Copyright (C) 2015 Christoph Lukas
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
apt_repository 'cloudarchive-kilo' do
  uri 'http://ubuntu-cloud.archive.canonical.com/ubuntu'
  distribution 'trusty-updates/kilo'
  components ['main']
  keyserver 'keyserver.ubuntu.com'
  key 'EC4926EA'
  action :add
end

node['pw_openstack_clients']['pkgs'].each do |pkg|
  package pkg
end

template "#{node['pw_openstack_clients']['userhome']}/openstackrc" do
  source 'openstackrc.erb'
  owner node['pw_openstack_clients']['user']
  group node['pw_openstack_clients']['group']
  mode '644'
end
