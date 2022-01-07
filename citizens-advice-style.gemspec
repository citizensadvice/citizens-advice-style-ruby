# frozen_string_literal: true

lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "citizens-advice/style/version"

Gem::Specification.new do |spec|
  spec.name          = "citizens-advice-style"
  spec.version       = CitizensAdvice::Style::VERSION
  spec.authors       = ["Robert Murray", "Luke Hill", "Daniel Lewis"]
  spec.summary       = "Citizens Advice shared rubocop configuration"
  spec.homepage      = "https://github.com/citizensadvice/citizens-advice-style-ruby"
  spec.license       = "MIT"

  spec.required_ruby_version = ">= 2.7"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/citizensadvice/citizens-advice-style-ruby"
  spec.metadata["changelog_uri"] = "https://github.com/citizensadvice/citizens-advice-style-ruby/blob/master/CHANGELOG.md"
  spec.metadata["rubygems_mfa_required"] = "true"
  spec.files = Dir["lib/**/*", "default.yml", "default-rails.yml", "CHANGELOG.md", "LICENSE", "README.md"]

  spec.require_paths = ["lib"]

  spec.add_dependency "rubocop", "~> 1.23.0"
  spec.add_dependency "rubocop-rspec", "~> 2.6.0"
end
