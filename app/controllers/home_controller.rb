class HomeController < ApplicationController

	before_filter :authenticate_user!

	def index
		
		response = HTTParty.get('https://graph.facebook.com/oauth/access_token?grant_type=fb_exchange_token&client_id=260052574142983&client_secret=b78620e2e68d979937f0ba533b632f85&fb_exchange_token=' + current_user.short_term_token)
		current_user.long_term_token = response.split('=')[1].split('&')[0]
		current_user.save

	end
end
