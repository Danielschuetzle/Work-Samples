class ChangeColumnNamesUser < ActiveRecord::Migration[6.1]
  def change
    rename_column :users, :firstName, :first_name
    rename_column :users, :lastName, :last_name
  end
end
