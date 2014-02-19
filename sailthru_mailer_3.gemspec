# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sailthru_mailer/version'

Gem::Specification.new do |spec|
  spec.name          = "sailthru_mailer_3"
  spec.version       = SailthruMailer::VERSION
  spec.authors       = ["Dan Langevin"]
  spec.email         = ["dan.langevin@lifebooker.com"]
  spec.description   = %q{Implements ActionMailer compatible syntax}
  spec.summary       = %q{Implements ActionMailer compatible syntax}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'activesupport'
  spec.add_dependency 'i18n'
  spec.add_dependency 'sailthru-client'

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "guard-rspec"
  spec.add_development_dependency "simplecov"
  spec.add_development_dependency "mocha"
  spec.add_development_dependency "rake"

end
