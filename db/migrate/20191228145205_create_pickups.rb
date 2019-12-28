class CreatePickups < ActiveRecord::Migration[6.0]
  def up
    create_table :pickups do |t|
      t.time :departure_time
      t.integer :source_id
      t.integer :destination_id
      t.integer :passenger_id
      t.timestamps
    end
    add_foreign_key :pickups, :places, column: :source_id
    add_foreign_key :pickups, :places, column: :destination_id
    add_foreign_key :pickups, :users, column: :passenger_id
  end
  def down
    drop_table :pickups
  end
end
