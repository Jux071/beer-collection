class StylesController < ApplicationController
	before_action :find_style, { only: [:edit, :update, :show, :destroy] }

	def index
		@styles = Style.all.paginate(:page => params[:page], :per_page => 10)
	end

  def new
		@style = Style.new
	end

	def create
		@style = Style.new(style_params)

		if @style.save
			flash[:notice] = 'Style created succesfully :)'
			redirect_to styles_path
		else
			render :new
		end

	end

	def edit
			
	end

	def update		
	  
		if @style.update(style_params)
			redirect_to @style
		else
			render :edit
		end
	end

	def show    
    #@products = @seller.products
  end

	def destroy
	
		@style.destroy
		flash[:notice] = 'Style deleted succesfully'
		redirect_to styles_path
	end

	private 

	def style_params
		params.require(:style).permit(:name)
	end
  
  def find_style
		@style = Style.find(params[:id])
	end
end