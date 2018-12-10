class RentalsController < ApplicationController
	def index
		@my_car=MyCar.find(params[:id])

		@myrental= @my_car.Myrentals.build
		@myrentals= Myrental.all
	end
	def show
		@myrentals= MyRental.find(params[:id])
	end
	def new
		@myrentals= MyRental.new
	end

	def create
debugger
		@my_car=MyCar.find(params[:id])
		#@rental= @my_car.rentals.build(params[:rental])
		#rental_attribute=params.require(:rental).permit(:FromDate , :ToDate, :BorrowedBy, :my_cars_id)
		#@rentals= Rental.new(rental_attribute)

		#if @rentals.save
		#	redirect_to  rental_path, :id => @rentals[id]
		#else
		#	redirect_to  my_cars_path, :notice => "Could not save rental details"
		#	render "new"
		#end
	end


	def edit
		@myrentals= MyRental.find(params[:id])
	end
	
end
