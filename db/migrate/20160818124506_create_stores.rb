class CreateStores < ActiveRecord::Migration[5.0]
  def change
    create_table :stores do |t|
      t.string :name
      t.text :description
      t.string :city
      t.string :website
      t.string :facebook

      t.timestamps
    end
     add_reference :stores, :user, index: true
  end
end
