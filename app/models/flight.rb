class Flight < ActiveRecord::Base
  attr_accessible :arrival_airport, :departs_at, :departure_airport, :distance, :flight_num, :seats

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
