$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "enju_grid/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "enju_grid"
  s.version     = EnjuGrid::VERSION
  s.authors     = ["Masao Takaku"]
  s.email       = ["tmasao@acm.org"]
  s.homepage    = "https://github.com/masao/enju_grid"
  s.summary     = "Next-L Enju Grid"
  s.description = "Grid User interface for Next-L Enju"

  s.files = Dir["{app,config,db,lib,vendor}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["spec/**/*"] - Dir["spec/dummy/log/*"] - Dir["spec/dummy/solr/{data,pids,default,development,test}/*"] - Dir["spec/dummy/tmp/*"]

  # s.add_dependency "enju_seed", "~> 0.1.1.pre12"
  # s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails", "~> 3.1"
  s.add_development_dependency "vcr"
  s.add_development_dependency "simplecov"
  s.add_development_dependency "factory_girl_rails"
  s.add_development_dependency "sunspot_solr", "~> 2.1"
  s.add_development_dependency "enju_leaf", "~> 1.1.0.rc20"
  s.add_development_dependency "enju_manifestation_viewer", "~> 0.1.0.pre16"
  s.add_development_dependency "enju_circulation", "~> 0.1.0.pre41"
  s.add_development_dependency "enju_bookmark", "~> 0.1.2.pre20"
  s.add_development_dependency "enju_subject", "~> 0.1.0.pre28"
  s.add_development_dependency "mobylette"
  s.add_development_dependency "sunspot-rails-tester"
  s.add_development_dependency "rspec-activemodel-mocks"
  s.add_development_dependency "test-unit"
end
