class PagesController < ApplicationController
	layout "page"

	def index
		render "pages/index"
	end

end
