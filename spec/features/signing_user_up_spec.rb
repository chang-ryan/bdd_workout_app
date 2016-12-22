require 'rails_helper'

RSpec.feature "Signing up a user" do
  scenario "with valid credentials" do
    visit "/"
    
    click_link "Sign Up"
    fill_in "Email", with: "ryan@example.com"
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "password"
    click_button "Sign up"
    
    expect(page).to have_content("You have signed up successfully.")
    expect(page).to have_link("Log Out")
  end
  
  scenario "with invalid credentials" do
    visit "/"
    
    click_link "Sign Up"
    fill_in "Email", with: "ryan@example.com"
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "wordpass"
    click_button "Sign up"
    
    expect(page).to have_content("error")
  end
end