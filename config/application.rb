require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Rails.env)

module BrewformulasOrg
  #
  # Brewformulas application
  #
  # @author [guillaumeh]
  #
  class Application < Rails::Application
    # don't generate RSpec tests for views and helpers
    config.generators do |g|
      g.test_framework :rspec
      g.view_specs false
      g.helper_specs false
    end

    # Settings in config/environments/* take precedence over
    # those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and
    # make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names.
    # Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and
    # all translations from config/locales/*.rb,yml are auto loaded.
    # my_locales = Rails.root.join('my', 'locales', '*.{rb,yml}').to_s
    # config.i18n.load_path += Dir[my_locales]
    # config.i18n.default_locale = :de

    # When running in Docker, the logs are sent to the STDOUT so that you can
    # use the `docker logs` command to see them all.
    if ENV['RUNNING_IN_DOCKER'] && Rails.env.production?
      config.logger = Logger.new(STDOUT)
    end
  end
end
