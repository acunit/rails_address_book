require 'rails_helper'

RSpec.feature "LandingPages", type: :feature do
  # Story: As a user, I can go to a landing page.
  context "Landing page" do
    Steps "Going to a Landing page" do
      Given "I visit localhost 3000:" do
        visit "/"
      end
      # Story: As a user, I can create a Contact and save it in the database from the landing page. A Contact has a given name, a family name, an email address, and a home address.
      Then "I can create a contact and save contact to database" do
        fill_in 'given_name', with: 'Jack'
        fill_in 'family_name', with: 'Black'
        fill_in 'email', with: 'jackblack@gmail.com'
        fill_in 'address', with: '123 Hollywood Dr., Hollywood, CA'
        click_button 'Create Contact'
      end
    end
  end
end
