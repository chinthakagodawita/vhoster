# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vhoster/version'

Gem::Specification.new do |spec|
  spec.name          = "vhoster"
  spec.version       = Vhoster::VERSION
  spec.authors       = ["Chinthaka Godawita"]
  spec.email         = ["chin.godawita@me.com"]
  spec.description   = %q{Command-line utility to help setup and manage virtualhosts for Apache on OS X.}
  spec.summary       = %q{VirtualHost management for OS X.}
  spec.homepage      = "https://github.com/chinthakagodawita/vhoster"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency 'rake', '~> 0.8'
  spec.add_development_dependency 'rdoc', '~> 3.0'
  spec.add_development_dependency 'rspec', '~> 2.4'
  spec.add_development_dependency 'rubygems-tasks', '~> 0.2'
end
