# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
TestQuestion.destroy_all
Question.destroy_all
Test.destroy_all
User.destroy_all

user1 = User.create!(
  first_name: "Louis",
  last_name: "Deboutin",
  email: "test1@gmail.com",
  password: "password",
  role: "recruiter"
)

puts "#{User.count} users created"

question1 = Question.create!(
  description: "How would you price a brand new Kindle book?",
  tag: "Pricing"
)

question2 = Question.create!(
  description: "How would you set success metrics for FB dating?",
  tag: "Product Execution"
)

question3 = Question.create!(
  description: "What goals would you set for growth for Facebook Lite?",
  tag: "Product Execution"
)

question4 = Question.create!(
  description: "How do you price Amazon S3 new tier?",
  tag: "Pricing"
)
puts "#{Question.count} questions created"

test1 = Test.new(
  name: "Apple",
  jobtype: "Product Manager",
  user: User.last
)
test1.tag_list.add("Pricing")
test1.save

puts "#{Test.count} test created"
