$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "imperavi_redactor_rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "imperavi_redactor_rails"
  s.version     = ImperaviRedactorRails::VERSION
  s.authors     = ["Sergey Kishenin", "Michael Romanenko"]
  s.email       = ["sergey.kishenin@gmail.com", "michael@romanenko.kg"]
  s.homepage    = "https://github.com/ZeroOneStudio/imperavi_redactor_rails"
  s.summary     = "Image and file uploads backend for Imperavi's RedactorJS."
  s.description = "Image and file uploads backend for Imperavi's RedactorJS."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", ">= 4.0.0"

  s.add_development_dependency "sqlite3"
end
