require 'simplecov'
SimpleCov.start

require File.expand_path(File.dirname(__FILE__) + '/../calculator')

RSpec.configure do |config|
  config.mock_with :rspec
end