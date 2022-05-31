class AddDescriptionToFlats < ActiveRecord::Migration[6.1]
  def change
    add_column :flats, :description, :text
  end
end
