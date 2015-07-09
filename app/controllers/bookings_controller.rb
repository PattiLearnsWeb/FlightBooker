class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @num_passengers = params[:num_passengers]

    @num_passengers.to_i.times { @booking.passengers.build }
    @flight = Flight.find(params[:flight_id])
  end

  def create
    @booking = Booking.create(booking_params)
    if @booking.save
      redirect_to @booking
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private

    def booking_params
      params.require(:booking).permit(:flight_id, passengers_attributes: [:id, :name, :email])
    end
end
