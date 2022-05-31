class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.date :startDate
      t.date :endDate
      t.string :status
      t.references :user, null: false, foreign_key: true
      t.references :flat, null: false, foreign_key: true

      t.timestamps
    end
  end
end
