class User < ActiveRecord::Base
  attr_accessible :email, :ff_miles, :first_name, :last_name, :password, :password_confirmation

  has_secure_password

  has_many :reservations

  def ff_miles
    ff_miles_total = 0
    self.reservations.each do |reservation|
      ff_miles_total += reservation.flight.miles
    end
    ff_miles_total
    ##### Alternate strategy:
    # miles_array = reservations.map {|res| res.flight.miles}
    # miles_array.inject {|sum, miles| sum + miles}
  end
end
