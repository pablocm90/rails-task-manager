# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'


5.times do
  name = Faker::Lorem.words(1, true)
  description = Faker::Lorem.sentences(1, true)
  done = ['true', 'false'].sample(1)
  Task.create(description: description[0], title: name[0], done: done[0])
end

