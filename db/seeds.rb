# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#User.create({email: 'joe.m.pascale@gmail.com', Password: 'helloworld', confirmed_at: Time.now})

50.times do
  User.create([{
    email: Faker::Internet.email,
    password: Faker::Internet.password,
    role: Faker::Number.between(0, 2)
  }])
end

50.times do
  Wiki.create([{
    title: Faker::Lorem.word,
    body: Faker::Lorem.paragraph
  }])
end
