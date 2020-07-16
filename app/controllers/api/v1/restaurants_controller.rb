class Api::V1::RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :update, :destroy]

   # GET /restaurants
   def index
    @restaurants = Restaurant.all

    render json: @restaurants
  end
 
end
