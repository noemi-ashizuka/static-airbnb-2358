require "open-uri"
class FlatsController < ApplicationController
  def index
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    @flats = JSON.parse(URI.parse(url).read)
  end

  def show
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    @flats = JSON.parse(URI.parse(url).read)
    @flat = @flats.find { |flat_hash| flat_hash["id"] == params[:id].to_i }
  end
end
