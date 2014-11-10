require 'rails_helper'

feature "Person" do

  scenario 'person tries to create blank user' do

  visit root_path
  click_on "People"
  click_on "New Person"
  click_on "Create Person"
  expect(page).to have_content("can't be blank")


  end

end
