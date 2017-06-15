
# Copyright 2017 Company-Name

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gem_name/version'

Gem::Specification.new do |gem|
  gem.name          = 'gem_name'
  gem.version       = GemName::VERSION
  gem.authors       = ['Your-Name']
  gem.email         = ['Your-Email']
  gem.description   = 'Gem-Description'
  gem.summary       = 'Gem-Summary'
  gem.homepage      = 'http://github.com/dextermarkley/gem_name'
  gem.files         = `git ls-files`.split("\n")
  gem.require_paths = %w(lib)
  gem.add_runtime_dependency 'json'
end
