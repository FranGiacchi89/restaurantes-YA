class FoodsController < ApplicationController
  def index
    @foods = Food.all
    # @foods = current_user.foods.order(:created_at)
  end

  def show
    @food = Food.find(params[:id])
  end

  def create
    @food = Food.new
  end

  def edit

  end
end
