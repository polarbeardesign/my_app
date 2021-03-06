# config valid for current version and patch releases of Capistrano
lock "~> 3.16.0"

git_user = "polarbeardesign"
server_user = "dh_ymy63x"
set :user, "dh_ymy63x"
domain = "dh_ymy63x@rlife.toliveistofly.com"

# adjust if you are using RVM, remove if you are not
set :rvm_type, :user
set :rvm_ruby_version, "3.0.1@rails_6_1_3"

set :application, "my_app"
set :application_folder, "rlife_2"
set :repo_url, "git@github.com:polarbeardesign/my_app.git"

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
set :deploy_to, "/home/dh_ymy63x/rlife_2"

# distribute your applications across servers (the instructions below put them
# all on the same server, defined above as 'domain', adjust as necessary)
# role :app, domain
# role :web, domain
# role :db, domain

# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: "log/capistrano.log", color: :auto, truncate: :auto

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
append :linked_files, "config/database.yml", "config/master.key"

# Default value for linked_dirs is []
append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "public/system"

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for local_user is ENV['USER']
# set :local_user, -> { `git config user.name`.chomp }

# Default value for keep_releases is 5
# set :keep_releases, 5

# Uncomment the following to require manually verifying the host key before first deploy.
# set :ssh_options, verify_host_key: :secure

set :tmp_dir, "/home/#{server_user}/tmp"
set :passenger_restart_with_touch, true