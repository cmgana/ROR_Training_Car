class MyCarsController < ApplicationController
	def index
		@my_cars= MyCar.all
	end
	def show
		@my_cars= MyCar.find(params[:id])
	end
	def new
		@my_cars= MyCar.new
	end

	def edit
		@my_cars= MyCar.find(params[:id])
	end
	
	def update
		car_attribute=params.require(:my_car).permit(:CarName , :CarType, :Year)
		@my_cars=  MyCar.find(params[:id])
#debugger
#logger.debug "Person attributes hash: #{@my_cars.attributes.inspect}"
#logger.info "Processing the request..."
		if @my_cars.update_attributes(car_attribute)
			redirect_to my_cars_path, :notice => "Car details saved"
		else
			render "index"
		end
	end

	def create
		car_attribute=params.require(:my_car).permit(:CarName , :CarType, :Year)
		@my_cars= MyCar.new(car_attribute)
#debugger
#logger.debug "Person attributes hash: #{@my_cars.attributes.inspect}"
#logger.info "Processing the request..."
		if @my_cars.save
			redirect_to my_cars_path, :notice => "A new car details saved"
		else
			render "new"
		end
	end

	def destroy
		@my_cars= MyCar.find(params[:id])

		if @my_cars.destroy
			redirect_to my_cars_path, :notice => "Car deleted"
		else
			render "index"
		end
	end
end
