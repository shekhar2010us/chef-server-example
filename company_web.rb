# A name that describes what the system you're building with Chef does.
name 'company_web'

# Where to find external cookbooks:
default_source :supermarket

# run_list: chef-client will run these recipes in the order specified.
run_list 'mychef_client::default','company_web::default', 'myusers::default'


# Specify a custom source for a single cookbook:
cookbook 'company_web', path: 'cookbooks/company_web'
cookbook 'apache', path: 'cookbooks/apache'
cookbook 'myiis', path: 'cookbooks/myiis'
cookbook 'mychef_client', path: 'cookbooks/mychef_client'
cookbook 'myusers', path: 'cookbooks/myusers'

