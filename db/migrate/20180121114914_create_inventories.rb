class CreateInventories < ActiveRecord::Migration[5.1]
  def change
    create_table :inventories do |t|
      t.references :item, foreign_key: true
      t.references :category, foreign_key: true
      t.integer :quantity
      t.float :price
      t.timestamps
    end
  end
end
