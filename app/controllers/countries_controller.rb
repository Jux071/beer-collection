class CountriesController < ApplicationController
	before_action :find_country, { only: [:edit, :update, :show, :destroy] }

	def index
		@countries = Country.all
	end

  def new
		@country = Country.new
	end

	def create
		@country = Country.new(country_params)

		if @country.save
			flash[:notice] = 'Country created succesfully :)'
			redirect_to countries_path
		else
			render :new
		end

	end

	def edit
			
	end

	def update		
	  
		if @country.update(country_params)
			redirect_to @country
		else
			render :edit
		end
	end

	def show    
    @beers = @country.beers
  end

	def destroy
	
		@country.destroy
		flash[:notice] = 'Country deleted succesfully'
		redirect_to countries_path
	end

	private 

	def country_params
		params.require(:country).permit(:name, :flag, :image)
	end
  
  def find_country
		@country = Country.find(params[:id])
	end
end