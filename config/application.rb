require_relative 'boot'
require File.expand_path('../boot', __FILE__)

require 'rails/all'
require 'carrierwave'
require 'carrierwave/orm/activerecord'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module SampleApp
  class Application < Rails::Application
    config.action_view.embed_authenticity_token_in_remote_forms = true  
  end
end
