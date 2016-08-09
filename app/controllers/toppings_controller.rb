class ToppingsController < ApplicationController
  def index
  	@toppings = Topping.all
  end

  def create
  	Topping.create topping_params
  	redirect_to toppings_path
  end

  def new
  	@topping = Topping.new
  end

  def show
  	@topping = find_topping
  end

  private
  def topping_params
  	params.require(:topping).permit(:id, :name)
  end

  def pie_params
  	params.require(:pie).permit(:id, :name, :description)
  end

  def find_topping
  	@topping = Topping.find(params[:id])
  end
end
