# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "uuml"
  s.version     = '0.0.1'
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Willem van Bergen"]
  s.email       = ["willem@railsdoctors.com"]
  s.homepage    = "https://github.com/wvanbergen/uuml"
  s.summary     = %q{Instant Germanification of your web app}
  s.description = %q{Use this rack middleware to add umlauts to your u's where appropriate.}

  s.rubyforge_project = "uuml"

  s.add_runtime_dependency('rack')
  s.add_runtime_dependency('nokogiri')
  
  s.add_development_dependency('rake')
  s.add_development_dependency('rspec', '~> 2')

  s.files         = []
  s.test_files    = []
  s.require_paths = ["lib"]
end
