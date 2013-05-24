class Reservation < ActiveRecord::Base
  attr_accessible :credit_card_num, :departure_date, :flight_id, :user_id

  # create a validation to only accept valid credit card numbers
  validate :valid_credit_card

  def valid_credit_card
    unless credit_card_num.length == 16 && credit_card_num.start_with?("4")
      errors.add(:credit_card, "is not valid")
    end
  end
end
