class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
    # @restaurants = current_user.restaurants.order(:created_at)
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def edit

  end

end
