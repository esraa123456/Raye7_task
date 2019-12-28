class AddColumnDriverIdToTrip < ActiveRecord::Migration[6.0]
  def up
    add_column :trips, :driver_id, :integer
    add_foreign_key :trips, :users, column: :driver_id
  end
  def down
    remove_column :trips, :driver_id
  end
end
