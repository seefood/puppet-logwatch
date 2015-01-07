require 'spec_helper_acceptance'

describe 'logwatch class' do

  context 'default parameters' do
    it 'should work with no errors' do
      pp = <<-EOS
      class { 'logwatch': }
      EOS
      # Run it twice and test for idempotency
      apply_manifest(pp, :catch_failures => true)
      expect(apply_manifest(pp, :catch_failures => true).exit_code).to be_zero
    end

    describe package("logwatch") do
      it { should be_installed }
    end

    describe file("/etc/logwatch/conf/logwatch.conf") do
      it { should be_file }
      it { should contain "MailTo = root" }
    end

  end
end
