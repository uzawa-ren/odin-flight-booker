# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

["ZTR", "ODS", "LWO", "IEV", "VIN", "DNK", "FUK", "KUH", "HND", "KIX"].each do |airport_code|
  Airport.find_or_create_by!(code: airport_code)
end

[
  {
    departure_date: DateTime.new(2024,9,12, 8,0,0),
    flight_duration: '10 hours 41 minutes',
    departure_airport_id: 4,
    arrival_airport_id: 9
  },
  {
    departure_date: DateTime.new(2024,9,1,  8,0,0),
    flight_duration: '1 hour 14 minutes',
    departure_airport_id: 2,
    arrival_airport_id: 3
  },
  {
    departure_date: DateTime.new(2024,9,3,  12,4,0),
    flight_duration: '53 minutes',
    departure_airport_id: 5,
    arrival_airport_id: 3
  },
  {
    departure_date: DateTime.new(2024,9,3,  19,0,0),
    flight_duration: '10 hours 44 minutes',
    departure_airport_id: 7,
    arrival_airport_id: 3
  },
  {
    departure_date: DateTime.new(2024,9,3,  2,0,0),
    flight_duration: '10 hours 27 minutes',
    departure_airport_id: 7,
    arrival_airport_id: 2
  },
  {
    departure_date: DateTime.new(2024,9,13, 10,0,0),
    flight_duration: '1 hour 33 minutes',
    departure_airport_id: 7,
    arrival_airport_id: 9
  },
  {
    departure_date: DateTime.new(2024,9,4, 6,0,0),
    flight_duration: '1 hour 1 minute',
    departure_airport_id: 1,
    arrival_airport_id: 2
  },
  {
    departure_date: DateTime.new(2024,9,4, 3,0,0),
    flight_duration: '57 minutes',
    departure_airport_id: 6,
    arrival_airport_id: 2
  },
  {
    departure_date: DateTime.new(2024,9,4, 4,0,0),
    flight_duration: '58 minutes',
    departure_airport_id: 6,
    arrival_airport_id: 4
  },
  {
    departure_date: DateTime.new(2024,9,4, 6,0,0),
    flight_duration: '10 hours 17 minutes',
    departure_airport_id: 8,
    arrival_airport_id: 1
  },
  {
    departure_date: DateTime.new(2024,9,4, 7,0,0),
    flight_duration: '10 hours 16 minutes',
    departure_airport_id: 10,
    arrival_airport_id: 6
  },
].each do |flight_params|
  Flight.find_or_create_by!(flight_params)
end