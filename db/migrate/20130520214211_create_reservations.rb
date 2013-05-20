class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.integer :user_id
      t.integer :flight_id
      t.date :departure_date
      t.string :credit_card_num

      t.timestamps
    end
  end
end
