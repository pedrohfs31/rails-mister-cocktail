class RemoveIngredientsFromDoses < ActiveRecord::Migration[6.0]
  def change
    remove_column :doses, :ingredients_id
  end
end
