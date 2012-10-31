class CreateLineFoods < ActiveRecord::Migration
  def change
    create_table :line_foods do |t|
      t.integer :food_id
      t.integer :cart_id

      t.timestamps
    end
  end
end
