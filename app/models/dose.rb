class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  validates :description, presence: true
  # validates :id, uniqueness: { cocktail: :ingredient }
end
