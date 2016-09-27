lib = File.expand_path('../lib/', __FILE__)
$:.unshift(lib) unless $:.include?(lib)

Gem::Specification.new do |s|
  s.name         = 'nulogy-fitter-happier'
  s.version      = '0.0.3'
  s.platform     = Gem::Platform::RUBY
  s.authors      = ['Jon Moses', 'Corey Donohoe', 'Zachary Spencer']
  s.email        = ['engineering@nulogy.com']
  s.homepage     = 'https://github.com/nulogy/fitter-happier'
  s.summary      = 'FitterHappier is a plug-in that provides actions for monitoring site and/or database availability for rails apps.'
  s.description  = 'send bug reports to http://github.com/nulogy/fitter-happier/'

  s.files        = Dir.glob("{lib,app,config}/**/*") + %w( CHANGELOG MIT-LICENSE README.md )
  s.test_files   = Dir["spec/**/*"]
  s.require_path = 'lib'

  s.add_dependency 'actionpack', '>= 3.1.0'
  s.add_dependency 'activerecord', '>= 3.1.0'
  s.add_dependency 'railties', '>= 3.1.0'

  s.add_development_dependency 'rake', '>= 0.9.2'
  s.add_development_dependency 'rspec', '>= 2.6.0'
  s.add_development_dependency 'rspec-rails', '>= 2.6.1'
  s.add_development_dependency 'sqlite3'
  end
