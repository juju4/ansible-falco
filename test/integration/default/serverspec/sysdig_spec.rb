require 'serverspec'

# Required by serverspec
set :backend, :exec

describe package('sysdig-dkms'), :if => os[:family] == 'debian' || os[:family] == 'ubuntu' do
  it { should be_installed }
end
