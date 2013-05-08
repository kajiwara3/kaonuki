# coding: utf-8
# デプロイ環境名
set :rails_env, "staging"

#### rvmのパス
set :rvm_path, '~/.rvm'
set :rvm_bin_path, "#{rvm_path}/bin"
set :rvm_lib_path, "#{rvm_path}/lib"

#SSHユーザーの設定
set :user, 'ec2-user'

# デプロイ先のディレクトリ設定
set :deploy_to, "/home/#{user}"

#server "www.kaonuki.info", :app, :web, :db, primary: true
[:web, :app].each do |type|
  role type, 'www.kaonuki.info'
end
role :db, 'www.kaonuki.info', :primary => true

# Bundle
set :bundle_flags, ""
ssh_options[:keys] = %w(~/.ssh/aws/dev-aws.pem)

namespace :deploy do
end