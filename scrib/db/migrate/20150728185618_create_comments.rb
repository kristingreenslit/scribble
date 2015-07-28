class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :created_by
      t.string :comment_edit
      t.datetime :comment_at
    end
  end
end
