# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Comment.destroy_all
Post.destroy_all

post1 = Post.create(author: "Jane Doe", title: "Sample Post", content: "Sample Content")

post1.comments.create(author: "Jim Doe", content: "My Content")
