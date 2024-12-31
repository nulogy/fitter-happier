lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |s|
  s.name = "nulogy-fitter-happier"
  s.version = "1.6.0"
  s.required_ruby_version = ">= 3.2"
  s.platform = Gem::Platform::RUBY
  s.authors = ["Nulogy Corporation"]

  s.email = ["engineering@nulogy.com"]
  s.homepage = "https://github.com/nulogy/fitter-happier"
  s.summary = "FitterHappier is a plug-in that provides actions for monitoring site and/or database availability for rails apps."
  s.description = "send bug reports to https://github.com/nulogy/fitter-happier/"

  s.license = "MIT"

  s.metadata = {
    "bug_tracker_uri" => "https://github.com/nulogy/fitter-happier/issues",
    "changelog_uri" => "https://github.com/nulogy/fitter-happier/blob/master/CHANGELOG",
    "homepage_uri" => "https://github.com/nulogy/fitter-happier",
    "rubygems_mfa_required" => "true",
    "source_code_uri" => "https://github.com/nulogy/fitter-happier"
  }

  s.files = Dir.glob("{lib,app,config}/**/*") + %w[CHANGELOG MIT-LICENSE README.md]
  s.require_path = "lib"

  s.add_dependency "actionpack", ">= 7.0", "< 8.1"
  s.add_dependency "activerecord", ">= 7.0", "< 8.1"
  s.add_dependency "newrelic_rpm", ">= 8.16.0", "< 10.0"
  s.add_dependency "railties", ">= 7.0", "< 8.1"

  s.add_development_dependency "appraisal", "~> 2.5"
  s.add_development_dependency "rake", "~> 13.2"
  s.add_development_dependency "rspec-rails", "~> 7.1"
  s.add_development_dependency "rubocop", "~> 1.69"
  s.add_development_dependency "rubocop-rake", "~> 0.6"
  s.add_development_dependency "rubocop-rspec", "~> 3.3"
end
