# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database
# with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the
# db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(email: 'asdf', password: 'asdf', admin: true)
Blog.create(title: 'First Blog', content: 'Blah', user_id: 1)
Comment.create(title: '1 Comment', content: 'I Rock', user_id: 1, blog_id: 1)
