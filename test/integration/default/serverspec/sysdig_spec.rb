require 'serverspec'

# Required by serverspec
set :backend, :exec

describe package('sysdig') do
  it { should be_installed }
end

## Not valid if inside a container
#describe file('/dev/sysdig0') do
#  it { should be_file }
#end

