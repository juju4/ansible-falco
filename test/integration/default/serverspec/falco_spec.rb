require 'serverspec'

# Required by serverspec
set :backend, :exec

describe package('falco') do
  it { should be_installed }
end


