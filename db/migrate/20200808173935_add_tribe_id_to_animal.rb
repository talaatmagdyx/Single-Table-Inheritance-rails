class AddTribeIdToAnimal < ActiveRecord::Migration[6.0]
  def change
    add_column :animals, :tribe_id, :integer
  end
end
