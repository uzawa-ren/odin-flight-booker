class BookingsController < ApplicationController

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
    @flight = Flight.find(params[:choosen_flight])
    @number_of_passengers = params[:number_of_passengers]
    @number_of_passengers.to_i.times { @booking.passengers.build }
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      flash[:success] = "You've successfully booked tickets for this flight."
      redirect_to @booking
    else
      flight = Flight.find(params[:booking][:flight_id])
      passengers_attributes = params[:booking][:passengers_attributes].to_h
      number_of_passengers = passengers_attributes.size
      render :new, assigns: { flight: flight,
                              number_of_passengers: number_of_passengers },
                   status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:flight_id,
                                    passengers_attributes: [:name, :email])
  end
end
