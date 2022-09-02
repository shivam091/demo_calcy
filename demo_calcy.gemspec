# frozen_string_literal: true

require_relative "lib/demo_calcy/version"

Gem::Specification.new do |spec|
  spec.name = "demo_calcy"
  spec.version = DemoCalcy::VERSION
  spec.authors = ["shivam091"]
  spec.email = ["harshal.ladhe.1@gmail.com"]

  spec.summary = "Calculator"
  spec.description = "Calculator with four soperations"
  spec.homepage = "https://github.com/shivam091/demo_calcy"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "https://gem.fury.io/"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/shivam091/demo_calcy"
  spec.metadata["changelog_uri"] = "https://github.com/shivam091/demo_calcy/blob/4bc4578e7b2f0a45b3771cc423ddfd0007f0f2e9/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
