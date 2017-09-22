class HomeController < ApplicationController

	def index
		@title = 'Beer Collection'
		@beers = Beer.all.limit(6).order('created_at DESC')
	end

end