# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'terminal_thesaurus/version'

Gem::Specification.new do |spec|
  spec.name          = "terminal_thesaurus"
  spec.version       = TerminalThesaurus::VERSION
  spec.authors       = ["Felipe Gentil"]
  spec.email         = ["cdigentil@gmail.com"]

  spec.summary       = %q{Thesaurus via command line!}
  spec.description   = %q{Thesaurus dictionary, synonyms, antonyms and related. All via command line.}
  spec.homepage      = ""
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "bin"
  spec.executables   = ["thesaurus"]
  spec.require_paths = ["lib"]

  spec.add_dependency "nokogiri", "~> 1.6.3"

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "simplecov", "~> 0.9.0"
  spec.add_development_dependency "webmock", "~> 1.19"
  spec.add_development_dependency "byebug"
end
