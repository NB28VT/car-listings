require 'rails_helper'

feature 'user adds a new car', %Q{
  As a car salesperson
  I want to record a newly acquired car
  So that I can list it in my lot
  ```

  Acceptance Criteria:

  [ ] I must specify the manufacturer, color, year, and mileage of the car (an association between the car and an existing manufacturer should be created).
  [ ] Only years from 1920 and above can be specified.
  [ ] I can optionally specify a description of the car.
  [ ] If I enter all of the required information in the required formats, the car is recorded and I am presented with a notification of success.
  [ ] If I do not specify all of the required information in the required formats, the car is not recorded and I am presented with errors.
  [ ] Upon successfully creating a car, I am redirected back to the index of cars.


} do

  new_manufacturer = Manufacturer.create(name: "Ferrari", country: "Italy")

  scenario 'add valid car' do
    visit cars_path
    click_on "Add new car"

    select('Ferrari', :from => 'car[manufacturer_id]')
    fill_in "Color", with: "Red"
    fill_in "Year", with: "1962"
    fill_in "Mileage", with: "20000"
    fill_in "Description", with: "Fix It Again Tony!"
    click_on "Add Car"

    expect(page).to have_content "Ferrari"
    expect(page).to have_content "Car succesfully added!"
  end
end
