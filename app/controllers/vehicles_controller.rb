class VehiclesController < ApplicationController
  def index
    @vehicles = Vehicle.all
  end

  def show
    @vehicle = Vehicles.find(params[:id])
  end

end
