# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Test.destroy_all
Question.destroy_all
# Tag.destroy_all

user1 = User.create!(
  first_name: "Louis",
  last_name: "Deboutin",
  email: "test1@gmail.com",
  password: "password",
  role: "recruiter"
)

puts "#{User.count} user created"

test1 = Test.create!(
  name: "Apple",
  jobtype: "Product Manager",
  tags_test_list: "Pricing"
)

puts "#{Test.count} test created"

question1 = Question.create!(
  description: "How would you price a brand new Kindle book?",
  tags_list: "Pricing"
)

question2 = Question.create!(
  description: "How would you set success metrics for FB dating?",
  tags_list: "Product Execution"
)

question3 = Question.create!(
  description: "What goals would you set for growth for Facebook Lite?",
  tags_list: "Product Execution"
)

question4 = Question.create!(
  description: "How do you price Amazon S3 new tier?",
  tags_list: "Pricing"
)

# tag1 = Tag.create!(
#   name: "Pricing"
# )

# tag2 = Tag.create!(
#   name: "Product Execution"
# )

# puts "#{Tag.count} created"
