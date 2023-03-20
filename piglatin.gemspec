# frozen_string_literal: true

require_relative "lib/piglatin/version"

Gem::Specification.new do |spec|
  spec.name = "piglatin"
  spec.version = Piglatin::VERSION
  spec.authors = ["Divyesh Patel"]
  spec.email = ["pateldivyesh009@gmail.com"]

  spec.summary = "Pig Latin Translator"
  spec.description = "Translator for a secret language formed from English by transferring the initial consonant or consonant cluster of each word to the end of the word and adding a vocalic syllable"
  spec.homepage = "https://github.com/bugdimes/piglatin"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/bugdimes/piglatin"
  spec.metadata["changelog_uri"] = "https://github.com/bugdimes/piglatin/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
