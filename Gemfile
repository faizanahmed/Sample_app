source 'https://rubygems.org'
ruby '2.0.0'
#ruby-gemset=railstutorial_rails_4_0

gem 'rails', '4.0.1'
gem 'pg'
gem 'therubyracer', platforms: :ruby
gem 'bcrypt-ruby', '3.1.2'
gem 'bootstrap-sass'
group :development, :test do
	gem 'guard-rspec'
  
  gem 'rspec-rails'
   gem 'spork-rails'
  gem 'guard-spork'
  gem 'childprocess'
  gem 'zip'
end

group :test do
  gem 'cucumber-rails', :require => false
  gem 'database_cleaner', github: 'bmabey/database_cleaner'
  gem 'selenium-webdriver'
  gem 'capybara', '2.1.0'
end
gem 'sass-rails', '4.0.1'
gem 'uglifier', '2.1.1'
gem 'coffee-rails', '4.0.1'
gem 'jquery-rails', '3.0.4'
gem 'jbuilder', '1.0.2'
gem 'factory_girl_rails'

group :doc do
  gem 'sdoc', '0.3.20', require: false
end

group :production do

  
  gem 'rails_12factor', '0.0.2'
end