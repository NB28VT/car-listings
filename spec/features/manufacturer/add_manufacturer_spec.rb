require 'rails_helper'

feature 'user adds car manufacturer', %Q{
  As a car salesperson
  I want to record a car manufacturer
  So that I can keep track of the types of cars found in the lot
  ```

  Acceptance Criteria:

  [x] I must specify a manufacturer name and country.
  [x] If I do not specify the required information, I am presented with errors.
  [x] If I specify the required information, the manufacturer is recorded and I am redirected to the index of manufacturers
    } do
    scenario 'add valid car manufacturer' do
      visit manufacturers_path
      click_on "Add new manufacturer"

      fill_in "Manufacturer Name", with: "Ferrari"
      fill_in "Manufacturer Country", with: "Italy"
      click_on "Add manufacturer"


      expect(page).to have_content "Ferrari"
      expect(page).to have_content "Manufacturers"
      expect(page).to have_content "Manufacturer succesfully added!"

    end

    scenario 'user does not fill out fields' do
      visit manufacturers_path
      click_on "Add new manufacturer"

      click_on "Add manufacturer"

      expect(page).to have_content "Invalid data supplied!"
    end





end
