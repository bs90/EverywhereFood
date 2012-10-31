class Food < ActiveRecord::Base
  default_scope :order => "price"
  has_many :line_foods
  has_many :orders, :through => :line_foods
  before_destroy :ensure_not_referenced_by_any_line_food
  attr_accessible :desc, :img_url, :name, :price
  validates :desc, :img_url, :name, :price, :presence => true
  validates :price, :numericality => {:greater_than => 0.99}
  validates :name, :uniqueness => true
  private
  def ensure_not_referenced_by_any_line_food
  	if line_foods.empty?
		return true
	else
		errors.add(:base, 'Line Foods present')
		return false
	end
  end
end
