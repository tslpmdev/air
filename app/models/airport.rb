class Airport < ActiveRecord::Base
  attr_accessible :city, :code

  has_many :flights
end
