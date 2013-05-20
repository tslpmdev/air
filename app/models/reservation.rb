class Reservation < ActiveRecord::Base
  attr_accessible :credit_card_num, :departure_date, :flight_id, :user_id
end
