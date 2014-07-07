source 'https://rubygems.org'

ruby '1.9.3'
gem 'rails', '3.2.12'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

group :development, :test do
  gem 'sqlite3'
  gem  'mysql2'
end
gem 'activeadmin'
gem 'carrierwave'
gem 'fog'
# gem 'sorcery'
gem 'libv8'
gem 'heroku'
gem 'devise'
group :production do
  gem 'pg'
end
# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'execjs'
  gem 'therubyracer','~> 0.11.4', :platforms => :ruby
  gem 'uglifier', '>= 1.0.3'
  gem 'less-rails'

  gem 'twitter-bootstrap-rails'
  gem 'redactor-rails'

  gem 'fancybox-rails'

end
gem 'jquery-rails'
gem 'mini_magick'
# To use ActiveModel has_secure_password
gem 'bcrypt-ruby', '~> 3.0.0'
# gem 'fancybox-rails'
# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'

gem "rspec-rails", :group => [:test, :development]


# testing Environment ////////////////////////////////////////

group :test do
  #gem "factory_girl_rails"
  #gem "capybara"
  #gem "guard-rspec"
end