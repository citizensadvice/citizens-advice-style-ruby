# frozen_string_literal: true

lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "citizens-advice/style/version"

Gem::Specification.new do |spec|
  spec.name          = "citizens-advice-style"
  spec.version       = CitizensAdvice::Style::VERSION
  spec.author        = "Citizens Advice"
  spec.email         = %w[robert.murray@citizensadvice.org.uk luke.hill@citizensadvice.org.uk]
  spec.summary       = "Citizens Advice shared rubocop configuration"
  spec.homepage      = "https://github.com/citizensadvice/citizens-advice-style-ruby"

  spec.required_ruby_version = ">= 2.7"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/citizensadvice/citizens-advice-style-ruby"
  spec.metadata["changelog_uri"] = "https://github.com/citizensadvice/citizens-advice-style-ruby/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.require_paths = ["lib"]

  spec.add_dependency "rubocop", "~> 1.3.0"
end
