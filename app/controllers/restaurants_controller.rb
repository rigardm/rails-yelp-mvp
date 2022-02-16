class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]
  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(params_restaurant)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render 'new'
    end
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def params_restaurant
    params.require(:restaurant).permit(:name, :address, :category, :phone_number)
  end

  # def edit
  # end

  # def update
  #   @restaurant.update(params_restaurant)
  #   if @restaurant.save
  #     redirect_to restaurant_path
  #   else
  #     render 'edit'
  #   end
  # end

  # def destroy
  #   @restaurant.destroy
  #   redirect_to restaurants_path
  # end
end
