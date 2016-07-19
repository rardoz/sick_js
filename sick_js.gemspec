# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sick_js/version'

Gem::Specification.new do |spec|
  spec.name          = "sick_js"
  spec.version       = SickJs::VERSION
  spec.authors       = ["Robert Greene"]
  spec.email         = ["rgreene@avvo.com"]

  spec.summary       = %q{Sick JS Rails - Javascript from the future packaged for the Rails asset pipeline.}
  spec.description   = %q{Javascript from the future packaged for the Rails asset pipeline.}
  spec.homepage      = "http://avvo.com"
  spec.license       = "MIT"

  spec.files = Dir['{app,lib,spec}/**/*', 'Rakefile']

  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]


  spec.add_development_dependency "bundler", ">= 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end
