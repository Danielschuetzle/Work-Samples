class RenameColumnFlats < ActiveRecord::Migration[6.1]
  def change
    rename_column :flats, :pricePerNight, :price_per_night
  end
end
