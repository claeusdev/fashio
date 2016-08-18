class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.integer :price

      t.timestamps
    end
    add_reference :products, :store, index: true
  end
end
