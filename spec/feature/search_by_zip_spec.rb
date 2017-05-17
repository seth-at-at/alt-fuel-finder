require 'rails_helper'

RSpec.feature "from home page" do
  scenario "when filling in search form" do
    visit root_path
    fill_in "q", with: "80203"
    click_on "Locate"
    # request = HTTParty.get("https://developer.nrel.gov/api/alt-fuel-stations/v1.json?fuel_type=E85,ELEC&state=CA&limit=2&api_key=#{ENV["auth_key"]}")
    expect(current_path).to eq search_path
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
