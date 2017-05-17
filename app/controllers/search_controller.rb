class SearchController < ApplicationController
  def index
    request2 = AltFuelService.new(params[:q])
    @request = request2.search_url
  end
end
