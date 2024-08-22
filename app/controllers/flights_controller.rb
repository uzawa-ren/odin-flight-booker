class FlightsController < ApplicationController
  def index
    @airports = Airport.all
    @departure_dates = Flight.select(:departure_date)
                             .distinct
                             .order(:departure_date)
                             .map { |flight| [flight.departure_date.strftime("%m/%d/%Y"),
                                              flight.departure_date]}
                             .uniq{ |dates_array| dates_array.first }
  end
end
