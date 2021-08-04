# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

30.times do 
  Book.create(
    title: Faker::Book.title,
    genre: Faker::Book.genre,
    author: Faker::Book.author,
    notes_attributes:[
      content: Faker::Lorem.sentence(word_count: 5)
    ]
  )
end

30.times do 
  Magazine.create(
    title: Faker::Lorem.word,
    target_audiences: %w[Children Family Teenagers Adults].sample,
    description: Faker::Lorem.paragraph,
    notes_attributes:[
      content: Faker::Lorem.sentence(word_count: 4)
    ]
  )
end


