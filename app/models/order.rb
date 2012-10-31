class Order < ActiveRecord::Base
  attr_accessible :address, :email, :name, :payment
  PAYMENT_TYPES = [ "Check", "Credit card", "Purchase order" ]
  has_many :line_foods, :dependent => :destroy
  def add_line_foods_from_cart(cart)
  	cart.line_foods.each do |food|
  		food.cart_id = nil
  		line_foods << food
  	end
  end
end
