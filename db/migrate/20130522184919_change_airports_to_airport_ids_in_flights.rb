class ChangeAirportsToAirportIdsInFlights < ActiveRecord::Migration
  def change
    remove_column :flights, :arrival_airport
    remove_column :flights, :departure_airport
    add_column :flights, :arrival_airport_id, :integer
    add_column :flights, :departure_airport_id, :integer
  end
end
