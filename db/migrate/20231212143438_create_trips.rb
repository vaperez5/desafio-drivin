class CreateTrips < ActiveRecord::Migration[7.0]
  def change
    create_table :trips do |t|
      t.references :route, null: false, foreign_key: true
      t.string :trip_code #Tracking number
      t.string :name
      t.date :date

      t.timestamps
    end
  end
end
