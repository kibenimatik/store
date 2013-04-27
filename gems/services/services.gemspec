# coding: utf-8
$:.push File.expand_path("../lib", __FILE__)

require 'services/version'

Gem::Specification.new do |spec|
  spec.name          = "services"
  spec.version       = Services::VERSION
  spec.authors       = ["Droidlabs"]
  spec.description   = "Services"
  spec.summary       = "Services"
  spec.license       = "MIT"

  spec.files = Dir["lib/**/*"] + ["LICENSE.txt", "Rakefile", "README.md"]
  spec.test_files = Dir["spec/**/*"]

  spec.add_dependency "yell"
  spec.add_dependency "json"
  spec.add_dependency "activesupport"

  spec.add_development_dependency "rspec"
end
