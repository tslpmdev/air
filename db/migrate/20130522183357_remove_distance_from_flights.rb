class RemoveDistanceFromFlights < ActiveRecord::Migration
  def change
    remove_column :flights, :distance
  end
end
