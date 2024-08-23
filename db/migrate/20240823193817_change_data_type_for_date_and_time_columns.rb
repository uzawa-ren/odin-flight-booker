class ChangeDataTypeForDateAndTimeColumns < ActiveRecord::Migration[7.1]
  def self.up
    change_column(:flights, :departure_date, :string)
    change_column(:flights, :departure_time, :string)
  end
  def self.down
    change_column(:flights, :departure_date, :datetime)
    change_column(:flights, :departure_time, :time)
  end
end
