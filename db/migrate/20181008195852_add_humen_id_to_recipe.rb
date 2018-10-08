class AddHumenIdToRecipe < ActiveRecord::Migration[5.2]
  def change
    add_column :recipes, :humen_id, :integer
  end
end
