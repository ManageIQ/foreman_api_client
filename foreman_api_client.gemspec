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
  spec.license       = "Apache-2.0"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "apipie-bindings", "= 0.4.0"
  spec.add_runtime_dependency "rest-client",     "~> 2.0"

  spec.add_development_dependency "manageiq-style"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "simplecov", ">= 0.21.2"
  spec.add_development_dependency "vcr",       "~> 3.0.2"
  spec.add_development_dependency "webmock",   "~> 2.3.1"
end
