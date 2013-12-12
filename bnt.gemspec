# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bnt/version'

Gem::Specification.new do |spec|
  spec.name          = "bnt"
  spec.version       = Bnt::VERSION
  spec.authors       = ["Gaston Ramos"]
  spec.email         = ["ramos.gaston@gmail.com"]
  spec.description   = %q{Bosh ninja tools}
  spec.summary       = %q{Bosh ninja tools to test bosh packages in fast way}
  spec.homepage      = ""
  spec.license       = "GPL"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  #spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
end
