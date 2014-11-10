require 'rails_helper'

feature "Organization" do

  scenario 'User tries to create a blank organization' do

  visit root_path
  click_on "Organizations"
  click_on "New Organization"
  click_on "Create Organization"
  expect(page).to have_content("can't be blank")


  end

end
