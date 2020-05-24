$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "enju_grid/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "enju_grid"
  s.version     = EnjuGrid::VERSION
  s.authors     = ["Masao Takaku"]
  s.email       = ["tmasao@acm.org"]
  s.homepage    = "https://github.com/next-l/enju_grid"
  s.summary     = "Next-L Enju Grid"
  s.description = "Grid User interface for Next-L Enju"

  s.files = Dir["{app,config,db,lib,vendor}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["spec/**/*"] - Dir["spec/dummy/{log,solr,tmp}/**/*"] - Dir["spec/dummy/db/*.sqlite3"]

  s.add_dependency "enju_leaf", "~> 1.3.4.rc.2"

  s.add_development_dependency "enju_manifestation_viewer", "~> 0.3.4"
  s.add_development_dependency "enju_circulation", "~> 0.3.8"
  s.add_development_dependency "enju_subject", "~> 0.3.2"
  s.add_development_dependency "sqlite3"
  s.add_development_dependency "mysql2"
  s.add_development_dependency "pg"
  s.add_development_dependency "rspec-rails", "~> 4.0"
  s.add_development_dependency "simplecov"
  s.add_development_dependency "factory_bot_rails"
  s.add_development_dependency "sunspot_solr", "~> 2.5"
  s.add_development_dependency "coveralls", '~> 0.8.23'
  s.add_development_dependency "rails", "~> 5.2"
  s.add_development_dependency "sprockets", "~> 3.7"
end
