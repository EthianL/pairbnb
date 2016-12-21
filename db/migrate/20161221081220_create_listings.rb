class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :property
      t.integer :stars
      t.string :address
      t.integer :guest
      t.integer :price

      t.timestamps null: false
    end
  end
end
