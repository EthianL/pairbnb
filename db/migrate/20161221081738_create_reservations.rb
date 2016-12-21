class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.string :listing_id
      t.integer :total_price
      t.string :check_in
      t.string :check_out

      t.timestamps null: false
    end
  end
end
