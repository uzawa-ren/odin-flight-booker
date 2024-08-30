class Passenger < ApplicationRecord
  belongs_to :booking

  validates :name,  presence: { message: "You need to specify a name for your passenger." }
  validates :email, presence: { message: "You need to specify an email for your passenger." }
end
