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
    departure_date: "12/09/2024",
    departure_time: "8:00",
    flight_duration: '10 hours 41 minutes',
    departure_airport_id: 4,
    arrival_airport_id: 9
  },
  {
    departure_date: "01/09/2024",
    departure_time: "8:00",
    flight_duration: '1 hour 14 minutes',
    departure_airport_id: 2,
    arrival_airport_id: 3
  },
  {
    departure_date: "03/09/2024",
    departure_time: "12:40",
    flight_duration: '53 minutes',
    departure_airport_id: 5,
    arrival_airport_id: 3
  },
  {
    departure_date: "03/09/2024",
    departure_time: "19:00",
    flight_duration: '10 hours 44 minutes',
    departure_airport_id: 7,
    arrival_airport_id: 3
  },
  {
    departure_date: "03/09/2024",
    departure_time: "02:00",
    flight_duration: '10 hours 27 minutes',
    departure_airport_id: 7,
    arrival_airport_id: 2
  },
  {
    departure_date: "13/09/2024",
    departure_time: "10:00",
    flight_duration: '1 hour 33 minutes',
    departure_airport_id: 7,
    arrival_airport_id: 9
  },
  {
    departure_date: "04/09/2024",
    departure_time: "06:00",
    flight_duration: '1 hour 1 minute',
    departure_airport_id: 1,
    arrival_airport_id: 2
  },
  {
    departure_date: "04/09/2024",
    departure_time: "03:00",
    flight_duration: '57 minutes',
    departure_airport_id: 6,
    arrival_airport_id: 2
  },
  {
    departure_date: "04/09/2024",
    departure_time: "04:00",
    flight_duration: '58 minutes',
    departure_airport_id: 6,
    arrival_airport_id: 4
  },
  {
    departure_date: "04/09/2024",
    departure_time: "06:00",
    flight_duration: '10 hours 17 minutes',
    departure_airport_id: 8,
    arrival_airport_id: 1
  },
  {
    departure_date: "04/09/2024",
    departure_time: "07:00",
    flight_duration: '10 hours 16 minutes',
    departure_airport_id: 10,
    arrival_airport_id: 6
  },
].each do |flight_params|
  Flight.find_or_create_by!(flight_params)
end