# frozen_string_literal: true

require "__version/types"
require "hanami/application/settings"

module Version
  class Settings < Hanami::Application::Settings
    extend Dry:Configurable
    # Database
    setting :database_url, constructor: Types::String
pp self
    # Application
    setting :session_secret, constructor: Types::String, default: ENV.fetch('SESSION_SECRET') { "894f083e1a3da247617ea2ae766b2c8d664968ae" }

    # Assets
    setting :precompiled_assets, constructor: Types::Params::Bool, default: false
  end
end
