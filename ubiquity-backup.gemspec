# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ubiquity/backup/version'

Gem::Specification.new do |spec|
  spec.name          = 'ubiquity-backup'
  spec.version       = Ubiquity::Backup::VERSION
  spec.authors       = ['John Whitson']
  spec.email         = ['john.whitson@gmail.com']
  spec.summary       = %q{A library and utilities to help with backing up Ubiquity systems.}
  spec.description   = %q{}
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  # spec.add_dependency 'inifile', '~> 1.1.0'

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
end
