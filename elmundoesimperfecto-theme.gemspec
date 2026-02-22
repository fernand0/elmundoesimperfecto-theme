# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "elmundoesimperfecto-theme"
  spec.version       = "1.0.0"
  spec.authors       = ["Fernando Tricas García"]
  spec.email         = ["blog@elmundoesimperfecto.com"]

  spec.summary       = "Shared theme for elmundoesimperfecto Jekyll sites"
  spec.homepage      = "https://github.com/fernand0/elmundoesimperfecto-theme"
  spec.license       = "MIT"

  spec.files         = Dir["_includes/**/*", "_layouts/**/*", "_sass/**/*", "assets/**/*"]

  spec.metadata      = {
    "bug_tracker_uri"   => "https://github.com/fernand0/elmundoesimperfecto-theme/issues",
    "changelog_uri"     => "https://github.com/fernand0/elmundoesimperfecto-theme/blob/main/CHANGELOG.md",
    "source_code_uri"   => "https://github.com/fernand0/elmundoesimperfecto-theme",
    "gem_uri"           => "https://rubygems.org/gems/elmundoesimperfecto-theme"
  }

  spec.add_runtime_dependency "jekyll", ">= 3.7", "< 5.0"
  spec.add_runtime_dependency "jekyll-paginate", "~> 1.1"
end
