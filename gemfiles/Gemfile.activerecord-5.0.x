source "https://rubygems.org"

gemspec :path => '..'

gem "activerecord", "~> 5.0.7"
gem "pg", "~> 0.15"

unless ENV['CI'] || RUBY_PLATFORM =~ /java/
  gem 'byebug'
end
