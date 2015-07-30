# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require_relative './comment_data.rb'
require_relative './post_data.rb'

Comment.destroy_all
Post.destroy_all

comment_data = get_comment_data()
post_data = get_post_data()

comments.each do |comment|
  Comment.create!({
    created_by:          post[:name]
    comment_edit:        comment[:edit],
    comment_at:          post[:create],
  })

  posts.each do |song|
    Post.create!({
      created_by:          post[:name]
      post_title:          post[:title],
      post_content:        post[:content],
      post_edit:           post[:edit],
      created_at:          post[:create],
      edited_at:           post[:edit]
    })
  end
end
