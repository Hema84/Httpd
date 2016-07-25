require 'spec_helper'

describe 'httpd::default' do
  # Serverspec examples can be found at
  # http://serverspec.org/resource_types.html
  # it 'does something' do
  #  skip 'Replace this with meaningful tests'
  # end
  it 'haproxy service running test' do
    expect(service('httpd')).to be_running
  end
end
