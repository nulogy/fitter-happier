#!/usr/bin/env rake
begin
  require "bundler/setup"
rescue LoadError
  puts "You must `gem install bundler` and `bundle install` to run rake tasks"
end

APP_RAKEFILE = File.expand_path("spec/dummy/Rakefile", __dir__)
load "rails/tasks/engine.rake"

Bundler::GemHelper.install_tasks

require "rspec/core"
require "rspec/core/rake_task"
require "rubocop/rake_task"

desc "Run all specs in spec directory (excluding plugin specs)"
RSpec::Core::RakeTask.new(:spec)

desc "Run rubocop"
RuboCop::RakeTask.new

task :all => [:rubocop, :spec]
task :default => :spec
