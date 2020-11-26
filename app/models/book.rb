class Book < ApplicationRecord
  validates :name, presence: true, length: { minimum: 4 }
  validates :price, presence: true
  validates :note, presence: true, length: { minimum: 4 }
end
