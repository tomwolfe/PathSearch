# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'PathSearch/version'

Gem::Specification.new do |spec|
  spec.name          = "PathSearch"
  spec.version       = PathSearch::VERSION
  spec.authors       = ["Thomas Wolfe"]
  spec.email         = ["tomwolfe@gmail.com"]
  spec.summary       = %q{Basic graph searches.}
  spec.description   = %q{Breadth, depth and shortest first path searches.}
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
