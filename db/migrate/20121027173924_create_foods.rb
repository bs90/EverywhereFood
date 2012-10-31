class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :name
      t.string :img_url
      t.decimal :price, :precision => 8, :scale => 2
      t.text :desc

      t.timestamps
    end
  end
end
