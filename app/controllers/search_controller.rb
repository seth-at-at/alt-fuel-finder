class SearchController < ApplicationController
  def index
    fuel_request = AltFuelService.new(params[:q])
    @request = fuel_request.search_url
  end
end
