require 'rails_helper'

RSpec.feature "Visiting homepage" do
  scenario "user visits homepage" do
    visit "/"
    expect(page).to have_link("Home")
    expect(page).to have_link("Athlete's Den")
    expect(page).to have_content("Workout Lounge")
    expect(page).to have_content("Show off your workout")
  end
end