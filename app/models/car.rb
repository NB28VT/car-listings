class Car < ActiveRecord::Base
  validates_presence_of :manufacturer_id
  validates_presence_of :color
  validates_presence_of :year
  validates_presence_of :mileage
  validates_numericality_of :year, greater_than: 1920 

  belongs_to :manufacturer
end
