20.times do
  Person.create(
            name: Faker::Name.name_with_middle, 
            age: Faker::Number.between(18, 100).to_s,
            eye_color: Faker::Color.color_name,
            hair_color: Faker::Color.color_name,
            gender: Person.genders.sample,
            alive: Faker::Boolean.boolean
            )
end

puts "Persons seeded, there are now #{Person.count} people in the database."
