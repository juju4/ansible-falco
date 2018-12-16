require 'serverspec'

# Required by serverspec
set :backend, :exec

describe package('falco') do
  it { should be_installed }
end

describe process("falco") do
  its(:user) { should eq "root" }
  its(:args) { should include '--pidfile=/var/run/falco.pid' }
end

describe service('falco') do
  it { should be_enabled }
  it { should be_running }
end
