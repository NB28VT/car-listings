class CarsController<ApplicationController

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
  end

  def index
    @cars = Car.all
  end


  private

  def car_params
    params.require(:car).permit(:manufacturer, :color, :year, :mileage, :description)
  end

end
