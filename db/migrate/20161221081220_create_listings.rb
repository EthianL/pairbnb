class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      
      
      t.string :title
      t.string :address
      t.integer :bedroom
      t.integer :bathroom
      t.integer :max_guest
      t.text :description
      t.boolean :internet
      t.boolean :pet
      t.boolean :smoker
      t.integer :price

      
      
      t.belongs_to :user, index: true, foreign_key: true
      

      t.timestamps null: false
    end
  end
end
