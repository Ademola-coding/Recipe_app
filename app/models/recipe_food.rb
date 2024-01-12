class RecipeFood < ApplicationRecord
  belongs_to :food
  belongs_to :recipe

  validates :food_id, presence: true
  validates :quantity, presence: true, numericality: { greater_than: 0 }
  validates :recipe_id, presence: true
end
