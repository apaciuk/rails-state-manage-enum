source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.2"

### Application
gem "rails", "~> 7.0.4"
gem "puma", "~> 5.0"

### DB
gem "pg", "~> 1.1"
gem "activerecord-postgres_enum"
gem "hypershield"
gem "online_migrations"

### Encryption and Security
gem "rack-attack"

### Caching
gem "identity_cache"
gem "cityhash"
gem "dalli"

### Monitoring
gem "appsignal"

### Tools
gem "active_interaction", "~> 4.1"
gem "bootsnap", require: false
gem "lefthook"
gem "rails_semantic_logger"
gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby]

group :development, :test do
  gem 'rufo', '~> 0.13.0'
  gem "debug", platforms: %i[mri mingw x64_mingw]
  gem "bullet"
  gem "capybara"
  gem "database_cleaner"
  gem "database_cleaner-active_record"
  gem "email_spec"
  gem "factory_bot_rails"
  gem "ffaker"
  gem "rspec-rails"
  gem "shoulda-matchers"
  gem "simplecov"
end

group :development do
  gem "amazing_print"
  gem "annotate"
  gem "brakeman", require: false
  gem "bundler-audit"
  gem "rails_best_practices"
end
