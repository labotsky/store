class StaticPagesController < ApplicationController
	def home
		@products = Product.limit(12)				
	end

	def support

	end

	def account
		
	end

	def store
		
	end

	def contact
		
	end
end
