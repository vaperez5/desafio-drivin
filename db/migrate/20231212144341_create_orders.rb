class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.references :trip, null: false, foreign_key: true
      t.string :order_code
      t.string :client_id #Rut de la persona que realiza la orden
      t.string :address
      t.boolean :order_type #true: delivery, false: pickup
      t.boolean :completed #true: completed, false: pending
      t.date :date

      t.timestamps
    end
  end
end
