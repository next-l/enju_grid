$:.push File.expand_path("lib", __dir__)

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

  s.files = Dir["{app,config,db,lib,vendor}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["spec/**/*"] - Dir["spec/dummy/{log,solr,tmp}/**/*"]

  s.add_dependency "enju_biblio", "~> 0.4.0.beta.1"

  s.add_development_dependency "enju_leaf", "~> 1.4.0.beta.1"
  s.add_development_dependency "enju_manifestation_viewer", "~> 0.4.0.beta.1"
  s.add_development_dependency "enju_circulation", "~> 0.4.0.beta.1"
  s.add_development_dependency "enju_subject", "~> 0.4.0.beta.1"
  s.add_development_dependency "pg"
  s.add_development_dependency "rspec-rails", "~> 3.8"
  s.add_development_dependency "simplecov"
  s.add_development_dependency "factory_bot_rails"
  s.add_development_dependency "sunspot_solr", "~> 2.5"
  s.add_development_dependency "coveralls"
  s.add_development_dependency "vcr"
  s.add_development_dependency "webmock"
end
