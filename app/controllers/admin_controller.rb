class AdminController < ApplicationController
  def index
  	@total_orders = Order.count
  	@user = current_user
  end

  def tohome
  respond_to do |format|
  	format.html { redirect_to home_url}
  end
  end
end
