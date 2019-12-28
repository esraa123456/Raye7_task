class CreateTrips < ActiveRecord::Migration[6.0]
  def up
    create_table :trips do |t|
      t.time :departure_time
      t.integer :no_of_seats
      t.integer :source_id
      t.integer :destination_id
      t.integer :driver_id
      t.timestamps
    end
    add_foreign_key :trips, :places, column: :source_id
    add_foreign_key :trips, :places, column: :destination_id
    add_foreign_key :trips, :users, column: :driver_id
  end
  def down
    drop_table :trips
  end
end
