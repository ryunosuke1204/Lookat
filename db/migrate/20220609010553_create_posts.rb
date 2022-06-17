class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :name
      t.text :image
      t.string :headwear
      t.string :tops,null:false
      t.string :outer
      t.string :bottoms,null:false
      t.string :shoes
      t.string :accessories
      t.references :user,null: false,foreign_key: true
      t.timestamps
    end
  end
end
