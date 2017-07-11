class BookingsController < ApplicationController
  def index
  end

  def new
    @booking = Booking.new
    @car = Car.find(params[:car_id].to_i)
    #recieve @car from cars/:car_id/show
    ## show page has an instance of @car
    #@user = current_user
  end

  def create
    @car = Car.find(params[:car_id].to_i)
    @booking = Booking.new(strong_params)
    @booking.user = current_user
    #create Booking
    if @booking.save
      redirect_to car_booking_path(@car.id, @booking.id)
    else
      render 'bookings/new'
    end
  end

  def show
    @car = Car.find(params[:car_id].to_i)
    @booking = Booking.find(params[:id].to_i)
  end

  def edit
  end

  def destroy
  end

  private

  def strong_params
    params.require(:booking).permit(:start_date, :end_date, :car_id)
  end
end
