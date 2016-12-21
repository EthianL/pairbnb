class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password
      t.string :gender
      t.integer :phone_number
      t.string :passport
      t.string :currency
      t.string :address

      t.timestamps null: false
    end
  end
end
