class Flat < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_one_attached :photo

  after_validation :geocode, if: :will_save_change_to_street?
  geocoded_by :street

  validates :city, :street, :price_per_night, :description, presence: true
  validates :description, length: { minimum: 30 }
end
