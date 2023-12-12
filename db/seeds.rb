# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

route = Route.create(name: "Ruta 1")

trip = route.trips.create(trip_code: "ASD123", name: "Almuerzos", date: Date.today)

order = trip.orders.create(
  order_code: 'ABC123',
  client_id: '19890555-0',
  address: 'Avenida Siempre Viva 742',
  order_type: true, # true para entrega, false para recogida
  completed: false,
  date: Date.today
)