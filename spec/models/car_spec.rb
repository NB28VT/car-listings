require 'rails_helper'

RSpec.describe Car, :type => :model do
  it "allows a user to enter a valid manufacturer" do
    car = Car.new

    car.manufacturer_id = 14
    car.color = "Silver"
    car.year = 1974
    car.mileage = 20000

    expect(car.save).to eq(true)
  end

  it "does not allow a user to input a blank manufacturer_id" do
    car = Car.new

    car.color = "Silver"
    car.year = 1974
    car.mileage = 20000

    expect(car.save).to eq(false)
  end

  it "does not allow a user to input a blank color" do
    car = Car.new

    car.manufacturer_id = 14
    car.year = 1974
    car.mileage = 20000

    expect(car.save).to eq(false)
  end

  it "does not allow a user to enter a blank year" do
    car = Car.new

    car.manufacturer_id = 14
    car.color = "Silver"
    car.mileage = 20000

    expect(car.save).to eq(false)
  end

  it "does not allow a user to a year before 1920" do
    car = Car.new

    car.manufacturer_id = 14
    car.color = "Silver"
    car.mileage = 20000
    car.year = 1914
    expect(car.save).to eq(false)
  end


  it "does not allow a user to enter no mileage" do
    car = Car.new

    car.manufacturer_id = 14
    car.color = "Silver"
    car.year = 1974

    expect(car.save).to eq(false)
  end


end
