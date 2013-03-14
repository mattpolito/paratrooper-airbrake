# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'paratrooper-airbrake/version'

Gem::Specification.new do |gem|
  gem.name          = "paratrooper-airbrake"
  gem.version       = Paratrooper::Airbrake::VERSION
  gem.authors       = ["Brandon Farmer", "Matt Polito"]
  gem.email         = ["bthesorceror@gmail.com", "matt.polito@gmail.com"]
  gem.description   = %q{Send deploy notifications to Airbrake.io service when deploying with Paratrooper}
  gem.summary       = %q{Send deploy notifications to Airbrake.io service when deploying with Paratrooper}
  gem.homepage      = "http://github.com/mattpolito/paratrooper-airbrake"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'rspec', '~> 2.12'
  gem.add_development_dependency 'pry'
  gem.add_dependency 'paratrooper', '~> 1.2'
  gem.add_dependency 'airbrake', '~> 3.1'
end
