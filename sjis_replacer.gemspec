# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sjis_replacer/version'

Gem::Specification.new do |spec|
  spec.name          = "sjis_replacer"
  spec.version       = SJISReplacer::VERSION
  spec.authors       = ["Yuta Kurotaki"]
  spec.email         = ["yuta.kurotaki@gmail.com"]

  spec.summary       = %q{replace utf-8 characters to sjis safe.}
  spec.description   = %q{replace utf-8 characters to sjis safe.}
  spec.homepage      = "https://github.com/kurotaky/sjis_replacer"
  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "test-unit"
  spec.add_development_dependency "power_assert"
end
