# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'foreman_api_client/version'

Gem::Specification.new do |spec|
  spec.name          = "foreman_api_client"
  spec.version       = ForemanApiClient::VERSION
  spec.authors       = ["Keenan Brock", "Brandon Dunne"]
  spec.email         = ["keenan@thebrocks.net", "bdunne@redhat.com"]
  spec.description   = %q{Foreman apipie-bindings wrapper}
  spec.summary       = %q{Foreman apipie-bindings wrapper}
  spec.homepage      = "https://github.com/ManageIQ/foreman_api_client"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "apipie-bindings", "= 0.0.15"
  spec.add_runtime_dependency "psych"
  spec.add_runtime_dependency "rest-client",     "~> 2.0.0.rc1"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "coveralls"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "vcr", "~> 2.6"
  spec.add_development_dependency "webmock", "~> 1.24.2"

  spec.add_development_dependency "pry"
end
