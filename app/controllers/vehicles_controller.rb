class VehiclesController < ApplicationController

  def index
    @vehicles = Vehicle.where(category: "car")
    @vehicles = Vehicle.where(category: "scooter")
    @vehicles = Vehicle.where(category: "bicycle")
  end

  def show
    @vehicle = Vehicles.find(params[:id])
  end

end
