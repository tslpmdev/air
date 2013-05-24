class User < ActiveRecord::Base
  attr_accessible :email, :ff_miles, :first_name, :last_name, :password, :password_confirmation

  has_secure_password

  has_many :reservations
end
