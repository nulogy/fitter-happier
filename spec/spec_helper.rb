ENV["RAILS_ENV"] ||= "test"

require File.expand_path("dummy/config/environment.rb", __dir__)
require "rspec/rails"

RSpec.configure do |config|
  config.mock_with :rspec
  config.use_transactional_fixtures = true
  config.infer_base_class_for_anonymous_controllers = false
  config.order = "random"
end
