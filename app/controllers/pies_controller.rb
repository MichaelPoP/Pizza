class PiesController < ApplicationController
	before_action :find_pie, only: [:show, :add_pie]
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
  	@pie = find_pie
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