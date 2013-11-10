class PagesController < ApplicationController
	layout "page"

	def index
		render "pages/index"
	end

	def proyecto
		render "pages/proyecto"		
	end

	def nosotros
		render "pages/nosotros"		
	end

end
