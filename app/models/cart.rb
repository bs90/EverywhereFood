class Cart < ActiveRecord::Base
  # attr_accessible :title, :body
  has_many :line_foods, :dependent => :destroy

  def add_food(food_id)
  	current_food = line_foods.find_by_food_id(food_id)
  	if current_food
		current_food.quantity += 1
	else
		current_food = line_foods.build(:food_id => food_id)
	end
	current_food
	end

	def total_price
  	sum = 0
  	line_foods.each do |food|
  		sum += food.food.price*food.quantity
  	end
  	sum
  	end
end
