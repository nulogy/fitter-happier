lib = File.expand_path('../lib/', __FILE__)
$:.unshift(lib) unless $:.include?(lib)

Gem::Specification.new do |s|
  s.name         = 'nulogy-fitter-happier'
  s.version      = '1.5.2'
  s.platform     = Gem::Platform::RUBY
  s.authors      = ['Nulogy Corporation']

  s.email        = ['engineering@nulogy.com']
  s.homepage     = 'https://github.com/nulogy/fitter-happier'
  s.summary      = 'FitterHappier is a plug-in that provides actions for monitoring site and/or database availability for rails apps.'
  s.description  = 'send bug reports to https://github.com/nulogy/fitter-happier/'

  s.license      = 'MIT'

  s.metadata = {
    "homepage_uri" => "https://github.com/nulogy/fitter-happier",
    "changelog_uri" => "https://github.com/nulogy/fitter-happier/blob/master/CHANGELOG",
    "source_code_uri" => "https://github.com/nulogy/fitter-happier",
    "bug_tracker_uri" => "https://github.com/nulogy/fitter-happier/issues"
  }

  s.files        = Dir.glob("{lib,app,config}/**/*") + %w( CHANGELOG MIT-LICENSE README.md )
  s.test_files   = Dir["spec/**/*"]
  s.require_path = 'lib'

  s.add_dependency 'actionpack', '>= 6.0', '< 8.0'
  s.add_dependency 'activerecord', '>= 6.0', '< 8.0'
  s.add_dependency 'newrelic_rpm', '>= 6.15.0', '< 10.0'
  s.add_dependency 'railties', '>= 6.0', '< 8.0'

  s.add_development_dependency 'rake', '~> 13.0'
  s.add_development_dependency 'rspec-rails', '~> 5.0'
  s.add_development_dependency 'sqlite3', '~> 1.5'
end
