module SimpleFormThemes
  class Catalog < ApplicationRecord
    validates :name, presence: true
  end
end
