# frozen_string_literal: true

require "hanami/application/routes"

module Version
  class Routes < Hanami::Application::Routes
    define do
      slice :main, at: "/" do
        root to: "home.show"
      end
    end
  end
end
