# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'make_chrome_extension/version'

Gem::Specification.new do |spec|
  spec.name          = "make_chrome_extension"
  spec.version       = MakeChromeExtension::VERSION
  spec.authors       = ["banrui"]
  spec.email         = ["bando.rui@gmail.com"]
  spec.description   = "this gem make template of chrome extension"
  spec.summary       = "this gem make template of chrome extension"
  spec.homepage      = "https://github.com/banrui/make_chrome_extension"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
