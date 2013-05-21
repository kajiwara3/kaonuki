source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0.beta1'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 4.0.0.beta1'
  gem 'coffee-rails', '~> 4.0.0.beta1'
  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', platforms: :ruby

  gem 'uglifier', '>= 1.0.3'
end
gem 'execjs'
gem 'therubyracer'
gem 'jquery-rails'
gem 'jquery_mobile_rails'
gem 'jpmobile', github: 'jpmobile/jpmobile', branch: 'master'
# file uploader
gem 'carrierwave'
gem 'fog', '1.4.0'
gem 'net-scp', '1.0.4'

# resize image
gem 'rmagick'

# twitter
gem 'twitter'
gem 'omniauth-twitter'

# facebook
gem 'fb_graph'
gem 'omniauth-facebook'
gem 'activerecord-session_store'

# 日本語化
gem 'rails-i18n'
gem 'i18n_generators'


# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.0.1'
# 認証
gem 'devise', github: 'plataformatec/devise', branch: 'rails4'
# ページネーション
gem 'kaminari'
gem 'protected_attributes'

# デプロイ
gem 'capistrano'
gem 'capistrano-ext'
gem 'capistrano_colors'
gem 'rvm-capistrano'

################################################
# テスト・開発環境用
################################################
group :test, :development do
  gem 'sqlite3'
end

group :stating do
  gem 'mysql2'
end
# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano', group: :development

# To use debugger
# gem 'debugger'
