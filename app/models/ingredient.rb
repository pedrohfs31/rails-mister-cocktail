class Ingredient < ApplicationRecord
  has_many :doses
  has_many :cocktails, through: :doses
  validates :name, presence: true
  validates :name, uniqueness: true

  # before_destroy :dose?

  # def doses?
  #   # errors.add(:base, "cannot delete") if doses.count > 0

  #   # errors.blank?

  #   if doses.count > 0
  #     errors.add_to_base("cannot delete customer while orders exist")
  #   else
  #     return false
  #   end

  # end
end
