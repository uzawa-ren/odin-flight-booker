class FlightsController < ApplicationController
  def index
    @airports = Airport.all.map { |a| [a.code, a.id] }
    @departure_dates = departure_dates_formatted_collection
  end

  private

  def departure_dates_formatted_collection
    Flight.select(:departure_date)
          .distinct
          .order(:departure_date)
          .map { |f| [f.departure_date.strftime("%m/%d/%Y"),
                      f.departure_date] }
          .uniq{ |dates_array| dates_array.first }
  end
end
