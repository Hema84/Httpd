#
# Cookbook Name:: httpd
# Spec:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

require 'spec_helper'

describe 'httpd::default' do
  context 'When all attributes are default, on an unspecified platform' do
    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new
      runner.converge(described_recipe)
    end
    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end
    it 'create a file' do
      expect(chef_run).to create_file('/tmp/helloworld.txt')
    end
    it 'httpd install' do
      expect(chef_run).to install_package 'httpd'
    end
    it 'enable httpd' do
      expect(chef_run).to enable_service 'httpd'
    end
    it 'start httpd' do
      expect(chef_run).to start_service 'httpd'
    end
  end
end
