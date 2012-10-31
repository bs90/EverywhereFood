class AddQuantityToLineFoods < ActiveRecord::Migration
  def change
    add_column :line_foods, :quantity, :integer, :default => 1
  end
end
