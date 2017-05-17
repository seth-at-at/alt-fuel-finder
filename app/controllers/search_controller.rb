class SearchController < ApplicationController
  def index
    @request = HTTParty.parse("https://developer.nrel.gov/api/alt-fuel-stations/v1.json?fuel_type=E85,ELEC&state=CA&limit=2&api_key=iuttnhNVgCGVhHD9QTSsEZ3YnJE0AJNS209Ugpph")
    binding.pry
  end


end
