class CreateFlats < ActiveRecord::Migration[6.1]
  def change
    create_table :flats do |t|
      t.string :city
      t.string :street
      t.float :pricePerNight

      t.timestamps
    end
  end
end
