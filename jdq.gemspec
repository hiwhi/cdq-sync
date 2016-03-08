# -*- encoding: utf-8 -*-
require File.expand_path('../lib/jdq/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["mileszim", "hiwhi"]
  gem.email         = ["development@hiwhi.com"]
  gem.description   = "RubyMotion Gem to synchronize CoreData/CDQ with a JSONAPI compatible web service."
  gem.summary       = "Synchronize CDQ with a JSONAPI compatible backend."
  gem.homepage      = "https://github.com/hiwhi/jdq"
  gem.license       = 'MIT'

  files = []
  files << 'README.md'
  files << 'LICENSE'
  files.concat(Dir.glob('lib/**/*.rb'))
  files.concat(Dir.glob('motion/**/*.rb'))
  files.concat(Dir.glob('templates/**/*.rb'))
  files.concat(Dir.glob('vendor/**/*.{rb,m,h}'))
  gem.files = files
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "jdq"
  gem.require_paths = ["lib"]
  gem.add_runtime_dependency 'cdq', '>= 1.0.8'
  gem.add_runtime_dependency 'afmotion', '>= 2.6'
  gem.executables << 'jdq'

  gem.version       = JDQ::VERSION
end
