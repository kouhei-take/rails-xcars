class BookingsController < ApplicationController
  def index
    # @bookings = Booking.where("user_id = ?", current_user.id)
    @bookings = current_user.bookings
    @cars = Car.joins(bookings: :user).where(user: {id: current_user.id})

    ## @cars = @bookings.map(&:car)
    ##########################################
    # @cars = @bookings.map do |booking|
    #   booking.car
    # end
    ##########################################

    ##############################################
    # @bookings.each do |b|
    # @cars << Car.where('id = ?', b.car_id).first
    # end
    ##############################################
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
