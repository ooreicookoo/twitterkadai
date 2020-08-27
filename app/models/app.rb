class App < ApplicationRecord
  validates :content, presence: true
end
