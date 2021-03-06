
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "vue/version"

Gem::Specification.new do |spec|
  spec.name          = "vue"
  spec.version       = Vue::VERSION
  spec.authors       = ["Igor Preston"]
  spec.email         = ["igorpreston@gmail.com"]

  spec.summary       = %q{Vue gem for Rails}
  spec.homepage      = "https://github.com/codeblocs/vue"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir[
    'lib/**/*',
    'README.md',
    'LICENSE'
  ]

  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"

  spec.add_dependency "rails", "~> 5.0"
  spec.add_dependency "webpacker", "~> 3.5"
  spec.add_dependency "execjs", "~> 2.4"
end
