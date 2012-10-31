class LineFood < ActiveRecord::Base
  attr_accessible :cart_id, :food_id
  belongs_to :order
  belongs_to :food
  belongs_to :cart
end
