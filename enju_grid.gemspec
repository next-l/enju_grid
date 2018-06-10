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
  s.test_files = Dir["spec/**/*"] - Dir["spec/dummy/log/*"] - Dir["spec/dummy/solr/{data,pids,default,development,test}/*"] - Dir["spec/dummy/tmp/**/*"] - Dir["spec/dummy/db/*.sqlite3"]

  #s.add_dependency "enju_biblio", "~> 0.2.0"

  #s.add_development_dependency "enju_leaf", "~> 1.2.0.beta.4"
  #s.add_development_dependency "enju_manifestation_viewer", "~> 0.2.0"
  #s.add_development_dependency "enju_circulation", "~> 0.2.0"
  #s.add_development_dependency "enju_subject", "~> 0.2.0"
  s.add_development_dependency "pg"
  s.add_development_dependency "rspec-rails", "~> 3.5"
  s.add_development_dependency "simplecov"
  s.add_development_dependency "factory_bot_rails"
  s.add_development_dependency "sunspot_solr", "2.2.0"
  s.add_development_dependency "sunspot-rails-tester"
  s.add_development_dependency "codeclimate-test-reporter", "~> 1.0.0"
end
