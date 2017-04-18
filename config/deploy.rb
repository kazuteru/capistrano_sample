lock '3.8.0'

set :application, 'capistrano_sample'
set :repo_url, 'git@github.com:kazuteru/capistrano_sample.git'
set :deploy_to, '/home/deploy/staging'
set :pty, true
set :scm, :git
set :rbenv_ruby, '2.3.1'
set :rbenv_type, :system

after 'deploy:publishing', 'deploy:restart'
namespace :deploy do
  desc 'Restart application'
  task :restart do
    invoke 'unicorn:restart'
  end
end
