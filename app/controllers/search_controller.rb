class SearchController < ApplicationController
  def index
    @request = AltFuelService.search_url(params[:q])
    binding.pry
  end
end
