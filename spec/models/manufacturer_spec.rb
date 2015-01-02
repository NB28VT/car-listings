require 'rails_helper'

RSpec.describe Manufacturer, :type => :model do

  it "allows a user to enter a valid manufacturer" do
    manufacturer = Manufacturer.new

    manufacturer.name = "Porsche"
    manufacturer.country = "Germany"

    expect(manufacturer.save).to eq(true)
  end

  it "does not allow a user to enter a blank name" do
    manufacturer = Manufacturer.new

    manufacturer.country = "Germany"

    expect(manufacturer.save).to eq(false)
  end

  it "does not allow a user to enter a blank country" do
    manufacturer = Manufacturer.new

    manufacturer.name = "Porsche"

    expect(manufacturer.save).to eq(false)
  end

end
