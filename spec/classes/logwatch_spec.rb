require 'spec_helper'

describe 'logwatch' do

  it { should contain_class('logwatch::install') }
  it { should contain_class('logwatch::config') }

  it do
    should contain_package('logwatch').with_ensure('present')

    should contain_file('/etc/logwatch/conf/logwatch.conf').with({
      'ensure' => 'present',
      'owner'  => 'root',
      'group'  => 'root',
      'mode'   => '0644',
    })
  end

end
