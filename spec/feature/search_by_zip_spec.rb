require 'rails_helper'

RSpec.feature "from home page" do
  before(:each) do
    VCR.use_cassette("alt_fuel") do
      response = AltFuelService.new("80203").search_url
    end
  end

  scenario "when filling in search form" do
    visit root_path
    fill_in "q", with: "80203"
    click_on "Locate"
    expect(current_path).to eq search_path
    expect(page).to have_css(".stations")
    expect(page).to have_css('.closest_stations', count: 10)
  end
end

# As a user
# When I visit "/"
# And I fill in the search form with 80203
# And I click "Locate"
# Then I should be on page "/search" with parameters visible in the url
# Then I should see a list of the 10 closest stations within 6 miles sorted by distance
# And the stations should be limited to Electric and Propane
# And for each of the stations I should see Name, Address, Fuel Types, Distance, and Access Times
