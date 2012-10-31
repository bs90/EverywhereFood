class HomeController < ApplicationController
  skip_before_filter :authorize
  def index
  	@user = current_user
  	@cart = current_cart
  	@foods = Food.all
  end
end
