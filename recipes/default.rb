#
# Cookbook Name:: aps-proxy
# Recipe:: default
#
# Copyright (c) 2017 The Authors, All Rights Reserved.

include_recipe "aps-proxy::#{node['aps-proxy']['engine']}"
