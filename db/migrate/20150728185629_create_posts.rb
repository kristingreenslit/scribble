class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :created_by
      t.string :post_title
      t.string :post_content
      t.string :post_edit
      t.datetime :created_at
      t.datetime :edited_at
    end
  end
end
