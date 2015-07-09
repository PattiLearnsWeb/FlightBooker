class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.string :flight_id

      t.timestamps
    end
  end
end
