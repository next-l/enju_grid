require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)
require "enju_grid"
require "enju_leaf"
require "enju_circulation"
require "enju_subject"
require "enju_manifestation_viewer"

module Dummy
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end

