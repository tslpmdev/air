class Reservation < ActiveRecord::Base
  attr_accessible :credit_card_num, :departure_date, :flight_id, :user_id

  belongs_to :user
  belongs_to :flight

  # create a validation to only accept valid credit card numbers
  validate :valid_credit_card

  def valid_credit_card
    unless credit_card_num.length == 16 && credit_card_num.start_with?("4")
      errors.add(:credit_card, "is not valid")
    end
  end

  def formatted
    # Flight #176. 4/16/13 ORD-JFK 9:30AM - 11:08AM
    reservation = ""
    reservation << "Flight ##{self.flight.flight_num}. "
    reservation << "#{self.departure_date.strftime('%D')} "
    reservation << "#{self.flight.departure_airport.code} - #{self.flight.arrival_airport.code} "
    reservation << "#{self.flight.departs_at.strftime('%l:%M%p')}-"
    reservation << "#{self.flight.arrives_at.strftime('%l:%M%p')}"
    return reservation
  end

end





