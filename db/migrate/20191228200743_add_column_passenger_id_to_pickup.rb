class AddColumnPassengerIdToPickup < ActiveRecord::Migration[6.0]
  def up
    add_column :pickups, :passenger_id, :integer
    add_foreign_key :pickups, :users, column: :passenger_id
  end
  def down
    remove_column :pickups, :passenger_id
  end
end
