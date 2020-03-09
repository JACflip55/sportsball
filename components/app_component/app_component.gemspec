$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "app_component/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "app_component"
  spec.version     = AppComponent::VERSION
  spec.authors     = ["Jack"]
  spec.email       = ["jack.carlson@ntrepidcorp.com"]
  spec.summary     = "Summary of AppComponent."
  spec.license     = "MIT"

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 6.0.2", ">= 6.0.2.1"
  spec.add_dependency "slim-rails"
  spec.add_dependency "trueskill"

  spec.add_development_dependency "sqlite3"
  spec.add_development_dependency "rspec-rails"
  spec.add_development_dependency "shoulda-matchers"
end
