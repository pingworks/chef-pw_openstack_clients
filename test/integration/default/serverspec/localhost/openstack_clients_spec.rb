require_relative '../spec_helper'

describe command('nova --version') do
  its(:stderr) { should match /2.2.*/ }
end

describe command('neutron --version') do
  its(:stderr) { should match /2.3.*/ }
end

describe command('openstack --version') do
  its(:stderr) { should match /1.0.*/ }
end

describe command('designate --version') do
  its(:stderr) { should match /1.1.*/ }
end
