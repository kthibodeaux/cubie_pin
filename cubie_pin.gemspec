# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cubie_pin/version'

Gem::Specification.new do |spec|
  spec.name          = "cubie_pin"
  spec.version       = CubiePin::VERSION
  spec.authors       = ["Keith Thibodeaux"]
  spec.email         = ["keith@railscoder.net"]
  spec.summary       = %q{Control GPIO pins on a CubieBoard2}
  spec.description   = %q{Control GPIO pins on a CubieBoard2 running Cubian}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 3.2"
end
