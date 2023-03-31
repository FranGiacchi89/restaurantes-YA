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

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.user_id = current_user.id
    @restaurant.save
    if @restaurant.save
      redirect_to restaurants_path, notice: "El restaurante se creo exitosamente"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :specialty, :description, :photo, :user_id)
  end
end
