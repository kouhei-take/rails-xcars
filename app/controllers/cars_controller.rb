class CarsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:search_text]
      @cars = Car.where('lower(name) LIKE lower(?) OR lower(model) LIKE lower(?) OR lower(make) LIKE lower(?)', "%#{params[:search_text]}%", "%#{params[:search_text]}%", "%#{params[:search_text]}%")
    else
      @cars = Car.all
    end
  end

  def show
    @car = Car.find(params[:id])
    @booking = Booking.new
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
      redirect_to users_cars_path
    else
      render :new
    end
  end

  #Todo Edit Here to implement Car Information Edit!
  def update
  end

  #Todo Edit Here to implement Car Information Destroy!
  def delete
  end


  private

  def strong_params
    params.require(:car).permit(:name, :make, :year, :color, :seats, :location, :transmission, :price, :photo, :photo_cache)
  end
end
