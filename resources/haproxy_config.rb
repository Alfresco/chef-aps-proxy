resource_name :haproxy_config
default_action :nothing

action :run do
  user 'haproxy' do
    comment 'haproxy run user'
    uid 801
    system true
    shell '/bin/false'
  end

  package 'haproxy' do
    action :install
    version '1.5.18-3.el7_3.1'
  end

  package 'socat' do
    action :upgrade
  end

  directory '/etc/haproxy' do
    action :create
    owner 'root'
    group 'root'
    mode 0755
  end

  template '/etc/haproxy/haproxy.cfg' do
    source 'haproxy.cfg.erb'
    owner 'root'
    group 'root'
    mode 00644
    notifies :reload, 'service[haproxy]', :immediately
  end

  service 'haproxy' do
    supports restart: true, status: true, reload: true
    action [:enable, :start]
  end

  cookbook_file '/etc/logrotate.d/haproxy' do
    source 'haproxy-logrotate'
    owner 'root'
    group 'root'
    mode 00644
  end
end
