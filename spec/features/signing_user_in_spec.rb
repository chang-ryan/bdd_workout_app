require 'rails_helper'

RSpec.feature "Signing up a user" do
  before do
    @john = User.create!(email: "john@example.com", password: "password")
  end

  scenario "with valid credentials" do
    visit "/"
    
    click_link "Log In"
    fill_in "Email", with: "john@example.com"
    fill_in "Password", with: "password"
    click_button "Log in"
    
    expect(page).to have_content("Signed in successfully.")
    expect(page).to have_content("#{@john.email}")
  end
end