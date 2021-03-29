# require_relative "../../apartments.json"

class ApartmentsController < ApplicationController
  FILE = File.read("/Users/pro/code/lewagon/livecodes/airbnb-static/apartments.json")
  FLATS = JSON.parse(FILE)

  def index
    # url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    @apartments = FLATS

  end

  def show
    @apartment = FLATS.find { |flat| flat["id"] == params[:id].to_i }

  end

end
