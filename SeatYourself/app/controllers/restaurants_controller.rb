class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurants = Restaurant.find(params[:id])
  end

  # def new
  #   @restaurant = Restaurant.new
  # end

  def create 
    @restaurant = Restaurant.new
    @restaurant.save
  end
end