class CreateAirports < ActiveRecord::Migration
  def change
    create_table :airports do |t|
      t.string :city
      t.string :code

      t.timestamps
    end
  end
end
