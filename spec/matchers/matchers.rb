ChefSpec.define_matcher :haproxy_config

def run_haproxy_config(resource_name)
  ChefSpec::Matchers::ResourceMatcher.new(:haproxy_config, :run, resource_name)
end
