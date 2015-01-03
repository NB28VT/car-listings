class Car < ActiveRecord::Base
  validates_presence_of :manufacturer_id
  validates_presence_of :color
  validates_presence_of :year
  validates_presence_of :mileage

  belongs_to :manufacturer
end
