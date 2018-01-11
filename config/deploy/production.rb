set :stage, :production
set :server_name, "sanweiyun.com"

set :branch, "master"

set :deploy_to, '/data/www/blog'

#set :ssh_options, {
#  forward_agent: true,
#  auth_methods: %w{publickey},
#  port: 2888
# }


# set :password, ask('Server password', nil)
# server fetch(:server_name), user: 'deploy', port: 22, password: fetch(:password), roles: %w{web app db}

server fetch(:server_name), user: "soar", port: 22 ,roles: %w{web app db}


