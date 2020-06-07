require 'serverspec'

# Required by serverspec
set :backend, :exec

is_container = true

describe package('falco') do
  it { should be_installed }
end

if not is_container

  describe file('/dev/falco0') do
    it { should be_file }
    it { should be_character_device }
    it { should be_mode 400 }
  end

  describe process("falco") do
    its(:user) { should eq "root" }
    its(:args) { should include '--pidfile=/var/run/falco.pid' }
  end

  describe service('falco') do
    it { should be_enabled }
    it { should be_running }
  end
end
