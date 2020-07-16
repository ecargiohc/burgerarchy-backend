class Api::V1::RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :update, :destroy]

   # GET /restaurants
   def index
    @restaurants = Restaurant.all

    render json: @restaurants
  end
 
   # GET /restaurants/1
   def show
    render json: @restaurant
  end

  # POST /restaurants
  def create
    @restaurant = Restaurant.new(restaurant_params)

    if @restaurant.save
      render json: @restaurant, status: :created, location: @restaurant
    else
      render json: @restaurant.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /restaurants/1
  def update
    if @restaurant.update(restaurant_params)
      render json: @restaurant
    else
      render json: @restaurant.errors, status: :unprocessable_entity
    end
  end

  # DELETE /restaurants/1
  def destroy
    @restaurant.destroy
  end

end
