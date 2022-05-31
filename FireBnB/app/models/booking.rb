class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :flat

  validates :start_date, :end_date, presence: true
  validates :status, inclusion: { in: %w[pending accepted denied] }
end
