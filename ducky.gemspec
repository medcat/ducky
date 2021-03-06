# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ducky/version'

Gem::Specification.new do |spec|
  spec.name          = "ducky"
  spec.version       = Ducky::VERSION
  spec.authors       = ["medcat"]
  spec.email         = ["redjazz96@gmail.com"]
  spec.summary       = %q{Lookup documentation.}
  spec.description   = %q{Lookup documentation for core, stdlib, and gem methods.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "thor"
  spec.add_dependency "faraday"
  spec.add_dependency "faraday_middleware"
  spec.add_dependency "nokogiri"
  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
