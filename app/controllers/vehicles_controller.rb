class VehiclesController < ApplicationController

  def index
    @vehicles = Vehicle.where(category: params[:category])
    @vehicles = @vehicles.where('city ILIKE ?', params[:city]) if params[:city].present?
    @vehicles = @vehicles.where('price_day <= ?', params[:price_day]) if params[:price_day].present?

  end

  def show
    @vehicle = Vehicle.find(params[:id])
    @booking = Booking.new
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
