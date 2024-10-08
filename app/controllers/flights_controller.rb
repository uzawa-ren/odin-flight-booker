class FlightsController < ApplicationController
  def index
    @airports = airports_formatted_collection
    @departure_dates = departure_dates_formatted_collection

    @flights = find_flights(params[:departure_airport], params[:arrival_airport], params[:departure_date])
  end

  private

  def airports_formatted_collection
    Airport.all.map { |a| [a.code, a.id] }
  end
  
  def departure_dates_formatted_collection
    Flight.select(:departure_date)
          .distinct
          .order(:departure_date)
          .map { |f| f.departure_date }
  end

  def find_flights(departure_airport, arrival_airport, departure_date)
    flights = Flight.all
    flights = flights.where(departure_airport: departure_airport) if departure_airport.present?
    flights = flights.where(arrival_airport: arrival_airport) if arrival_airport.present?
    flights = flights.where(departure_date: departure_date) if departure_date.present?
    flights
  end
end
