# A name that describes what the system you're building with Chef does.
name 'haproxy'

# Where to find external cookbooks:
default_source :supermarket

# run_list: chef-client will run these recipes in the order specified.
run_list 'haproxy::default'

# Specify a custom source for a single cookbook:
cookbook 'haproxy', path: 'cookbooks/haproxy'

