# -*- encoding: utf-8 -*-
require File.expand_path('../lib/dibs/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Maciej Litwiniuk"]
  gem.email         = ["maciej@litwiniuk.net"]
  gem.description   = %q{DIBS payment gateway library}
  gem.summary       = %q{DIBS payment API wrapper for Ruby}
  gem.homepage      = "https://github.com/prograils/dibs"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "dibs"
  gem.require_paths = ["lib"]
  gem.version       = Dibs::VERSION
  gem.add_development_dependency "rspec", ">= 2.0.0"
end
