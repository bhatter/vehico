class BookingsController < ApplicationController

  def index
    @bookings = Booking.where(user: current_user)
    @bookings_as_owner = Booking.where(vehicle: current_user.vehicles)
  end

  # def show
  #   @booking = Booking.find(params[:id])
  # end

  def update
  if params[:param1] == "accepted"
    @booking = Booking.find(params[:id])
    @booking.status = "confirmed"
    @booking.save
    redirect_to user_bookings_path(current_user)
  else
    @booking = Booking.find(params[:id])
    @booking.status = "declined"
    @booking.save
    redirect_to user_bookings_path(current_user)
  end
  end

  def create
    @booking = Booking.new(booking_params)
    @vehicle = Vehicle.find(params[:vehicle_id])
    @booking.vehicle = @vehicle
    @booking.user = current_user
    if @booking.save
      redirect_to user_bookings_path(current_user)
    else
      redirect_to vehicle_path(@vehicle)
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to vehicle_bookings_path(@booking.vehicle)
  end


  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

end
