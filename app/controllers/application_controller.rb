class ApplicationController < ActionController::Base
  	protect_from_forgery

  	before_filter :set_locale  	  	
	helper_method :top_categories, :cart_items, :current_cart

	def set_locale
		 I18n.locale = params[:locale] || I18n.default_locale
	end
		
	def default_url_options(options = {})
		{locale: I18n.locale}
	end

	def top_categories
	    Category.all
	end

	def cart_items
		cart = current_cart
		cart.line_items
	end

	private

	def current_cart
		Cart.find(session[:cart_id])
		rescue ActiveRecord::RecordNotFound
		cart = Cart.create
		session[:cart_id] = cart.id
		cart		
	end 	
end
