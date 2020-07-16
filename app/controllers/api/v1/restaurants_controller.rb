class Api::V1::RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :update, :destroy]

 
end
