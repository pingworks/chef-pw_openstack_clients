default['pw_openstack_clients']['pkgs'] = %w(python-neutronclient python-novaclient python-openstackclient python-designateclient)
default['pw_openstack_clients']['user'] = 'ubuntu'
default['pw_openstack_clients']['group'] = 'ubuntu'
default['pw_openstack_clients']['userhome'] = '/home/ubuntu'

default['pw_openstack_clients']['os_url'] = "http://localhost/foo"
default['pw_openstack_clients']['os_user'] = "demo"
default['pw_openstack_clients']['os_pass'] = "demo"
default['pw_openstack_clients']['os_keyname'] = "demo"
default['pw_openstack_clients']['os_img'] = 'pingworks/docker-pw_baseimg:0.2'
default['pw_openstack_clients']['os_flavor'] = 'default'
