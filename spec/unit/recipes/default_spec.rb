#
# Cookbook Name:: aps-proxy
# Spec:: default
#
# Copyright (c) 2017 The Authors, All Rights Reserved.

require 'spec_helper'

describe 'aps-proxy::default' do
  context 'When all attributes are default, on an unspecified platform' do
    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new
      runner.converge(described_recipe)
    end

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end
    it 'should include recipe' do
      expect(chef_run).to include_recipe('aps-proxy::haproxy')
    end
  end
end
