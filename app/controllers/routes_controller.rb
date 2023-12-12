class RoutesController < ApplicationController
    def index
        @routes = Route.all

        render json: {
          success: true,
          routes: @routes
        }
    end

    def show
        @route = Route.find(params[:id])
        @trips = @route.trips.includes(:orders)

        render json: {
          success: true,
          route: @route,
          trips: @trips.as_json(include: :orders)
        }
    end
end
