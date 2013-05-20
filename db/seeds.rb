# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Flight.destroy_all

possible_flight_paths = [ ['ORD', 'JFK'],
                          ['ORD', 'LAX'],
                          ['ORD', 'SFO'],
                          ['JFK', 'LAX'],
                          ['JFK', 'SFO'],
                          ['LAX', 'SFO'] ]

flight_number_array = (100..999).to_a
flight_number_array.shuffle!
100.times do
  flight_path = possible_flight_paths.sample
  Flight.create(  flight_num: flight_number_array.pop,
                  departure_airport: flight_path[0],
                  departs_at: Time.parse("#{rand(12)+1}:00"),
                  arrival_airport: flight_path[1],
                  seats: 85 )
end

puts "100 flights created"






