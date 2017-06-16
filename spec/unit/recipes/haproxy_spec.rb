#
# Cookbook Name:: aps-proxy
# Spec:: haproxy
#
# Copyright (c) 2017 The Authors, All Rights Reserved.

require 'spec_helper'

describe 'aps-proxy::haproxy' do
  let(:chef_run) { ChefSpec::ServerRunner.converge(described_recipe) }
  it 'runs chef' do
    expect { chef_run }.to_not raise_error
  end
  it 'runs haproxy_config' do
    expect(chef_run).to run_haproxy_config('Configuring and Running haproxy for APS')
  end
end
