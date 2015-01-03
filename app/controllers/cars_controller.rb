class CarsController<ApplicationController

  def new
    @manufacturers = Manufacturer.all
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    if @car.save
      redirect_to cars_path, notice: "Car succesfully added!"
    else
      redirect_to new_car_path
    end
  end

  def index
    @cars = Car.all
  end


  private

  def car_params
    params.require(:car).permit(:manufacturer_id, :color, :year, :mileage, :description)
  end

end
