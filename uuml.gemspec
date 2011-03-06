# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "uuml"
  s.version     = "0.0.3"
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

  s.files         = %w(.gitignore Gemfile README.rdoc Rakefile lib/uuml.rb lib/uuml/html.rb lib/uuml/middleware.rb lib/uuml/railtie.rb spec/spec_helper.rb spec/uuml/html_spec.rb spec/uuml/middleware_spec.rb tasks/gem_release_tasks.rb uuml.gemspec)
  s.test_files    = %w(spec/uuml/html_spec.rb spec/uuml/middleware_spec.rb)
  s.require_paths = ["lib"]
end
