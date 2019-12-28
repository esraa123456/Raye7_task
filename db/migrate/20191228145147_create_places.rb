class CreatePlaces < ActiveRecord::Migration[6.0]
  def up
    create_table :places do |t|
      t.string :name
      t.decimal :longitude
      t.decimal :latitude
      t.timestamps
    end
  end
  def down
    drop_table :places
  end
end
