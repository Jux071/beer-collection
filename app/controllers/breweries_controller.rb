class BreweriesController < ApplicationController
	before_action :authorize, { only: [:new, :update, :destroy, :edit] }
	before_action :find_brewery, { only: [:edit, :update, :show, :destroy] }

	def index
		@breweries = Brewery.all.paginate(:page => params[:page], :per_page => 10)
	end

  def new
		@brewery = Brewery.new
	end

	def create
		@brewery = Brewery.new(brewery_params)

		if @brewery.save
			flash[:notice] = 'Brewery created succesfully :)'
			redirect_to breweries_path
		else
			render :new
		end

	end

	def edit
			
	end

	def update		
	  
		if @brewery.update(brewery_params)
			redirect_to @brewery
		else
			render :edit
		end
	end

	def show    
    @beers = @brewery.beers
  end

	def destroy
	
		@brewery.destroy
		flash[:notice] = 'Brewery deleted succesfully'
		redirect_to breweries_path
	end

	private 

	def brewery_params
		params.require(:brewery).permit(:name)
	end
  
  def find_brewery
		@brewery = Brewery.find(params[:id])
	end
end