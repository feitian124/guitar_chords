# -*- encoding: utf-8 -*-
require File.expand_path('../lib/guitar_chords/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["ming"]
  gem.email         = ["feitian124@gmail.com"]
  gem.description   = %q{this gem contains all guitar chords information.}
  gem.summary       = %q{search guitar chords}
  gem.homepage      = "http://blog.yunnuy.com"
  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "guitar_chords"
  gem.require_paths = ["lib"]
  gem.version       = GuitarChords::VERSION

  gem.add_development_dependency "rspec"
  gem.rubyforge_project = "guitar_chords"
end
