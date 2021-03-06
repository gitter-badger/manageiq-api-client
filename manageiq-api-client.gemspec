# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'manageiq/api/client/version'

Gem::Specification.new do |spec|
  spec.name          = "manageiq-api-client"
  spec.version       = ManageIQ::API::Client::VERSION
  spec.authors       = ["Alberto Bellotti"]
  spec.email         = ["abellott@redhat.com"]

  spec.summary       = "ManageIQ API Client"
  spec.description   = %q{
    This gem provides Ruby access to the ManageIQ Rest API by exposing the ManageIQ
    collections, resources and related actions as Ruby objects and equivalent methods.
  }
  spec.homepage      = "http://github.com/ManageIQ/manageiq-api-client"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.files        += %w(README.md LICENSE.txt)
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"

  spec.add_dependency "activesupport", "~> 5.0.0"
  spec.add_dependency "faraday", "~> 0.9.2"
  spec.add_dependency "faraday_middleware", "~> 0.10.0"
  spec.add_dependency "json", "~> 1.8.3"
  spec.add_dependency "more_core_extensions", "~> 2.0.0"
end
