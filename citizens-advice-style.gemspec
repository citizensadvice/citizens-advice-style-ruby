# frozen_string_literal: true
lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "citizens-advice/style/version"

Gem::Specification.new do |spec|
  spec.name          = "citizens-advice-style"
  spec.version       = CitizensAdvice::Style::VERSION
  spec.authors       = ["Citizens Advice"]
  spec.email         = ["robert.murray@citizensadvice.org.uk"]

  spec.summary       = "Citizens Advice shared rubocop configuration"
  spec.homepage      = "https://github.com/citizensadvice/citizens-advice-style-ruby"

  spec.required_ruby_version = "~> 2.6"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = "https://github.com/citizensadvice/citizens-advice-style-ruby"
    spec.metadata["changelog_uri"] = "https://github.com/citizensadvice/citizens-advice-style-ruby"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # A working configuration can suddenly become a problem if rubocop deprecates or changes
  # cop names. Allowing just patch updates should prevent this happening.
  # When rubocop is upgraded here, this gem should get a minor version update as well.
  spec.add_dependency "rubocop", "~> 0.87.0"
end
