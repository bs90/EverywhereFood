class AddOrderIdToLineFood < ActiveRecord::Migration
  def change
    add_column :line_foods, :order_id, :integer
  end
end
