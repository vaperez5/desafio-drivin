class OrdersController < ApplicationController
    before_action :find_trip

    def create
        @order = @trip.orders.build(order_params)

        if @trip.save
            render json: { status: 'success', message: 'Orden agregada exitosamente.' }
        else
            render json: { status: 'error', message: 'Error al agregar la orden.' }, status: :unprocessable_entity
        end
    end

    private

    def find_trip
        @trip = Trip.find(params[:trip_id])
    end

    def order_params
        params.require(:order).permit(:trip_id, :order_code, :client_id, :address, :order_type, :completed, :date)
    end
end

