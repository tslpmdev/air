class Flight < ActiveRecord::Base
  attr_accessible :arrival_airport_id, :departs_at, :departure_airport_id, :distance, :flight_num, :seats


  belongs_to :arrival_airport, class_name: 'airport', foreign_key: 'arrival_airport_id'
  # def arrival_airport
  #   Airport.find_by_id(self.arrival_airport_id)
  # end

  belongs_to :departure_airport, class_name: 'airport', foreign_key: 'departure_airport_id'
  # def departure_airport
  #   Airport.find_by_id(self.departure_airport_id)
  # end



  # Refactor this model to use the Airport model instead of strings in the arrival_airport and departure_airport columns



  def miles
    if departure_airport == 'ORD' && arrival_airport == 'JFK'
      return 740
    elsif departure_airport == 'ORD' && arrival_airport == 'LAX'
      return 1744
    elsif departure_airport == 'ORD' && arrival_airport == 'SFO'
      return 1846
    elsif departure_airport == 'JFK' && arrival_airport ==
      'LAX'
      return 2475
    elsif departure_airport == 'JFK' && arrival_airport == 'SFO'
      return 2586
    elsif departure_airport == 'LAX' && arrival_airport == 'SFO'
      return 338
    end
  end

  def duration_in_minutes
    return (self.miles/8.0).to_i
  end

  def arrives_at
    return self.departs_at + (self.duration_in_minutes * 60)
  end

end
