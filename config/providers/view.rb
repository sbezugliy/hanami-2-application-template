# frozen_string_literal: true

Hanami.application.register_provider :view do
  start do
    register "view.context", Version::View::Context.new
  end
end
