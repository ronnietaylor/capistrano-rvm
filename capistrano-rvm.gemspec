# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |gem|
  gem.name          = "capistrano-rvm"
  gem.version       = '0.0.1'
  gem.authors       = ["Ronnie Taylor"]
  gem.email         = ["ronnie@ronnietaylor.com"]
  gem.description   = %q{RVM Capistrano tasks}
  gem.summary       = %q{RVM Capistrano tasks}
  gem.homepage      = "https://github.com/ronnietaylor/capistrano-rvm"

  gem.files         = `git ls-files`.split($/)
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency 'capistrano'

end
