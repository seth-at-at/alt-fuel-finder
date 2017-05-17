class SearchController < ApplicationController
  def index
    @request = HTTParty.get("https://developer.nrel.gov/api/alt-fuel-stations/v1.json?fuel_type=E85,ELEC&state=CA&limit=2&api_key=#{ENV["auth_key"]}")
  end


end
