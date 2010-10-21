require File.expand_path('../boot', __FILE__)

# Pick the frameworks you want:
# require "active_record/railtie"
require 'mongoid/railtie'
require "action_controller/railtie"
require "action_mailer/railtie"
require "active_resource/railtie"
require "rails/test_unit/railtie"

# If you have a Gemfile, require the gems listed there, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Rails.env) if defined?(Bundler)

module Wago
  class Application < Rails::Application
    config.action_view.javascript_expansions[:defaults] = %w(jquery rails)
    config.encoding = "utf-8"
    config.filter_parameters += [:password]
    config.generators do |g|
      g.orm :mongoid
    end
  end
end
