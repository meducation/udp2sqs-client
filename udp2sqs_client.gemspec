# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'udp2sqs_client/version'

Gem::Specification.new do |spec|
  spec.name          = "udp2sqs_client"
  spec.version       = Udp2sqsClient::VERSION
  spec.authors       = ["MalcyL, mmmmmrob"]
  spec.email         = ["malcolm@landonsonline.me.uk, rob@dynamicorange.com"]
  spec.description   = %q{Client for the udp2sqs-server.}
  spec.summary       = %q{See also udp2sqs-server.}
  spec.homepage      = ""
  spec.license       = "AGPL3"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "minitest", "~> 5.0"
end
