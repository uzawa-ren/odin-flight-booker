class CreateFlights < ActiveRecord::Migration[7.1]
  def change
    create_table :flights do |t|
      t.datetime :departure_date
      t.string :flight_duration
      t.references :departure_airport, null: false, foreign_key: { to_table: :airports}
      t.references :arrival_airport, null: false, foreign_key: { to_table: :airports}

      t.timestamps
    end
  end
end
