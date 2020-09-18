class AddCocktailToIngredients < ActiveRecord::Migration[6.0]
  def change
    add_reference :ingredients, :cocktail, index: true
  end
end
