class ManufacturersController<ApplicationController

  def new
    @manufacturer = Manufacturer.new
  end

  def create
    @manufacturer = Manufacturer.new(manufacturer_params)

    if @manufacturer.save
      redirect_to manufacturers_path
    else
      redirect_to new_manufacturer_path
    end
  end


  def index
    @manufacturers = Manufacturer.all
  end

  private

  def manufacturer_params
    params.require(:manufacturer).permit(:name, :country)
  end

end
