class CarsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @cars = Car.all
  end

  def show
    @car = Car.find(params[:id])

    @hash = Gmaps4rails.build_markers(@car) do |car, marker|
      marker.lat car.latitude
      marker.lng car.longitude
      # marker.infowindow render_to_string(partial: "/cars/map_box", locals: { car: car })
    end
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(strong_params)
    @car.user = current_user

    if @car.save
      redirect_to user_cars_path(current_user.id)
    else
      render :new
    end
  end

  private

  def strong_params
    params.require(:car).permit(:name, :make, :year, :color, :seats, :location, :transmission, :price, :photo, :photo_cache)
  end
end
