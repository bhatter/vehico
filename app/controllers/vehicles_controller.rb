class VehiclesController < ApplicationController

  def index
    @vehicles = Vehicle.where(category: params[:category])
  end

  def show
    @vehicle = Vehicle.find(params[:id])
  end

  def new
    @vehicle = Vehicle.new
  end

  def create
    @vehicle = Vehicle.new(vehicle_params)
    @vehicle.user = current_user
    if @vehicle.save
      redirect_to vehicle_path(@vehicle)
    else
      render 'new'
    end
  end

  private

  def vehicle_params
    params.require(:vehicle).permit(:photo, :description, :city, :price_day, :category)
  end

end
