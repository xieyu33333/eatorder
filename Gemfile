source 'http://rubygems.org'

gem 'rails', '3.2.13'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'sqlite3'
gem 'jquery-rails'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end


group :development do
  gem 'angularjs_scaffold'
end

group :development, :test do
  gem 'brakeman', "~> 1.9"
  gem 'quiet_assets'
  gem 'factory_girl_rails'
  gem 'pry-rails'
  gem 'rspec-rails'
  gem 'awesome_print'
  gem 'guard-rspec'
  gem 'spork'
  gem 'guard-spork'
  gem 'annotate'
end

group :test do
  gem 'capybara'
  gem 'growl' if /darwin/ =~ RUBY_PLATFORM
  gem 'rb-fsevent' , :require => false
  gem 'libnotify' if /linux/ =~ RUBY_PLATFORM
  gem 'rb-inotify' if /linux/ =~ RUBY_PLATFORM
end

gem 'devise'
gem 'unicorn'
gem "will_paginate", "~> 3.0.3"
gem 'mysql2'
gem "rails_kindeditor"
gem 'carrierwave'
gem 'mime-types'
gem 'cancan'
gem 'dalli', '~> 2.3.0'
gem 'thin'
# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'
