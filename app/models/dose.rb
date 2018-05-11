class Dose < ApplicationRecord
  belongs_to :ingredient
  belongs_to :cocktail
  validates :description, presence: true
  validates :ingredient_id, presence: true, uniqueness: { scope: :cocktail_id, message: "Description has already been taken"}

end
