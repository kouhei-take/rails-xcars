class CarsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    if params[:search_text]
      @cars = Car.where("lower(name) LIKE lower(?) OR lower(model) LIKE lower(?)", "%#{params[:search_text]}%", "%#{params[:search_text]}%")
    else
      @cars = Car.all
    end
  end

  def show
    @car = Car.find(params[:id])
  end
end
