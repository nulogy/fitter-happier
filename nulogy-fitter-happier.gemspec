lib = File.expand_path('../lib/', __FILE__)
$:.unshift(lib) unless $:.include?(lib)

Gem::Specification.new do |s|
  s.name         = 'nulogy-fitter-happier'
  s.version      = '1.1.3'
  s.platform     = Gem::Platform::RUBY
  s.authors      = ['Nulogy Corporation']

  s.email        = ['engineering@nulogy.com']
  s.homepage     = 'https://github.com/nulogy/fitter-happier'
  s.summary      = 'FitterHappier is a plug-in that provides actions for monitoring site and/or database availability for rails apps.'
  s.description  = 'send bug reports to http://github.com/nulogy/fitter-happier/'

  s.license      = 'MIT'

  s.files        = Dir.glob("{lib,app,config}/**/*") + %w( CHANGELOG MIT-LICENSE README.md )
  s.test_files   = Dir["spec/**/*"]
  s.require_path = 'lib'

  s.add_dependency 'actionpack', '< 6.1'
  s.add_dependency 'activerecord', '< 6.1'
  s.add_dependency 'newrelic_rpm', '>= 4.4.0', '< 7.0'
  s.add_dependency 'railties', '< 6.1'

  s.add_development_dependency 'rake', '~> 12.3', '>= 12.3'
  s.add_development_dependency 'rspec-rails', '~> 3.8', '>= 3.8'
  s.add_development_dependency 'sqlite3', '~> 1.3', '>= 1.3'
end
