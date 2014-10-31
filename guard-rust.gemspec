# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'guard/rust/version'

Gem::Specification.new do |spec|
  spec.name          = "guard-rust"
  spec.version       = Guard::RustVersion::VERSION
  spec.authors       = ["Benjamin Cavileer"]
  spec.email         = ["bcavileer@holmanauto.com"]
  spec.summary       = %q{Guard gem for Rust}
  spec.description   = %q{Guard::Rust automatically builds your Rust code.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'guard'

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
