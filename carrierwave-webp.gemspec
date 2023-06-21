# encoding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'carrierwave/webp/version'

Gem::Specification.new do |spec|
  spec.name          = 'carrierwave-webp'
  spec.version       = Carrierwave::Webp::VERSION
  spec.authors       = ['Max Riveiro']
  spec.email         = ['kavu13@gmail.com']
  spec.description   = %q{CarrierWave module for processing your uploads into WebP format}
  spec.summary       = %q{CarrierWave module for processing your uploads into WebP format}
  spec.homepage      = 'https://github.com/kavu/carrierwave-webp'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.test_files    = spec.files.grep(%r{^(test|spec)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'webp-ffi', '~> 0.3.0'
  spec.add_dependency 'carrierwave', '>= 0.8'

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
end
