class RestaurantsController < ApplicationController
  def index
    @restaurants = current_user.restaurants.order(:created_at)
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

end
