class BeersController < ApplicationController
	before_action :find_beer, { only: [:edit, :update, :show, :destroy] }

	def index
		@beers = Beer.all
	end

  def new
		@beer = Beer.new
	end

	def create
		@beer = Beer.new(beer_params)

		if @beer.save
			flash[:notice] = 'Beer created succesfully :)'
			redirect_to beers_path
		else
			render :new
		end

	end

	def edit
			
	end

	def update		
	  
		if @beer.update(beer_params)
			redirect_to @beer
		else
			render :edit
		end
	end

	def show    
    #@products = @seller.products
  end

	def destroy
	
		@beer.destroy
		flash[:notice] = 'Beer deleted succesfully'
		redirect_to beers_path
	end

	private 

	def beer_params
		params.require(:beer).permit(:name, :quantity, :country_id, :style_id, :brewery_id, :image)
	end
  
  def find_beer
		@beer = Beer.find(params[:id])
	end

end