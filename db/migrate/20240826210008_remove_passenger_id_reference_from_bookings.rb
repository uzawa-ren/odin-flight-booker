class RemovePassengerIdFromBookings < ActiveRecord::Migration[7.1]
  def change
    remove_reference :bookings, :passenger_id, null: false
  end
end
