# -*- encoding: utf-8 -*-

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "job_store/version"

Gem::Specification.new do |gem|
  gem.name          = "job_store"
  gem.version       = JobStore::VERSION
  gem.authors       = ["Konstantinos Aravanis"]
  gem.email         = ["kos.arav@gmail.com"]
  gem.homepage      = "https://github.com/sbosx/job_store"
  gem.summary       = %q{Per job global storage for Sidekiq.}
  gem.description   = %q{Per job global storage for Sidekiq.}
  gem.license       = 'MIT'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency "fakeredis"
  gem.add_development_dependency "pry"
  gem.add_development_dependency "rake"
  gem.add_development_dependency "rspec"

  gem.add_dependency "sidekiq"
end