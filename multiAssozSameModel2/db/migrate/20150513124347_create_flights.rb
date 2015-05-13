class CreateFlights < ActiveRecord::Migration
  def change
    create_table :flights do |t|
      t.string :nr
      t.integer :departure_airport_id
      t.string :arrival_airport_id

      t.timestamps
    end
  end
end
