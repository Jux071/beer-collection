class HomeController < ApplicationController

	def index
		@title = 'Beer Collection'
		@beers = Beer.all.limit(12).order('created_at DESC')
	end

end