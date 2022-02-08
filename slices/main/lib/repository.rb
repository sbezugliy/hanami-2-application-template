# auto_register: false
# frozen_string_literal: true

require "__version/repository"

module Main
  class Repository < Version::Repository
    struct_namespace Entities
  end
end
