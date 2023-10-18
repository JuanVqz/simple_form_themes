require_relative "lib/simple_form_themes/version"

Gem::Specification.new do |spec|
  spec.name        = "simple_form_themes"
  spec.version     = SimpleFormThemes::VERSION
  spec.authors     = ["Juan Vasquez"]
  spec.email       = ["me@juanvasquez.dev"]
  spec.homepage    = "https://github.com/juanvqz/simple_form"
  spec.summary     = "Simplify the installation of themes for simple_form gem"
  spec.description = "The gem offers a simple and straightforward installation process, allowing you to quickly integrate it into your existing simple_form setup"
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "#{spec.homepage}/blob/master/CHANGELOG.md"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.required_ruby_version = '>= 2.5.0'

  spec.add_dependency "rails", ">= 5.2"
  spec.add_dependency "simple_form", ">= 5.3"
end
