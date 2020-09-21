class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  # has_many :ingredients, dependent: :destroy
  has_many :ingredients, through: :doses
  validates :name, presence: true
  validates :name, uniqueness: true

  has_one_attached :photo
end
