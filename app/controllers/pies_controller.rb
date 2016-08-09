class PiesController < ApplicationController
	before_action :find_pie, only: [:show, :destroy, :add_topping, :remove_topping]
  def index
  	@pies = Pie.all
  end

  def create
  	Pie.create pie_params
  	redirect_to pies_path
  end

  def new
  	@pie = Pie.new
  end

  def show
  	@toppings = Topping.all - @pie.toppings
  end

  def destroy
  	@pie.destroy
  	redirect_to pies_path
  end

  def add_topping
  	topping = Topping.find(topping_params[:id])
  	# unless @pie.toppings.include? topping
  		@pie.toppings << topping
  	# end
  	redirect_to @pie
  end

  def remove_topping
  	@pie.toppings.delete(Topping.find(params[:topping_id]))
  	redirect_to @pie
  end

  private
  def pie_params
  	params.require(:pie).permit(:name, :description)
  end

  def topping_params
  	params.require(:topping).permit(:id, :name)
  end

  def find_pie
  	@pie = Pie.find(params[:id])
  end

end
