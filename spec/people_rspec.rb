require 'rails_helper'

feature 'people' do
  scenario 'people can create new person' do
    visit root_path
    click_on "New Person"
    fill_in "First name", with: "Scooby"
    fill_in "Last name", with: "Doo"
    fill_in "Date of birth", with: "11/10/2014"
    click_on "Create Person"
  end

    scenario "checks blank field" do
    visit root_path
    click_on "New Person"
    click_on "Create Person"
  end

  scenario 'checks for error-message' do
    visit root_path
    click_on "New Person"
    click_on "Create Person"
    expect(page).to have_content "First name cannot be blank
      /Last name cannot be blank
      /Date of birth cannot be blank"
  end
end
