# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'huemongous/version'

Gem::Specification.new do |spec|
  spec.name          = "huemongous"
  spec.version       = Huemongous::VERSION
  spec.authors       = ["Antek Drzewiecki"]
  spec.email         = ["you.imagine@gmail.com"]
  spec.description   = %q{A Ruby wapper to interface with Philips hue.}
  spec.summary       = %q{Wrapper}
  spec.homepage      = "https://github.com/Antek-drzewiecki/huemongous/"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
  spec.add_dependency "multi_json"
  spec.add_dependency "httpclient"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency 'guard'
  spec.add_development_dependency 'guard-rspec'
  spec.add_development_dependency 'webmock'

end
