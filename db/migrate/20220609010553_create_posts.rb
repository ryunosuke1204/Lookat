class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.text :content,null:true
      t.string :headwear,null:true
      t.string :tops,null:true
      t.string :outer,null:true
      t.string :bottoms,null:true
      t.string :shoes,null:true
      t.string :accessories,null:true
      t.references :user,null: false,foreign_key: true
      t.timestamps
    end
  end
end
