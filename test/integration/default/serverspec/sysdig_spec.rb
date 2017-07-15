require 'serverspec'

# Required by serverspec
set :backend, :exec

describe package('sysdig-dkms'), :if => os[:family] == 'debian' || os[:family] == 'ubuntu' do
  it { should be_installed }
end
describe package('sysdig'), :if => os[:family] == 'redhat' do
  it { should be_installed }
end

## Not valid if inside a container
#describe file('/dev/sysdig0') do
#  it { should be_file }
#end

