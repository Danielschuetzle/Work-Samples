class RenameColumnsBookings < ActiveRecord::Migration[6.1]
  def change
    rename_column :bookings, :startDate, :start_date
    rename_column :bookings, :endDate, :end_date
  end
end
