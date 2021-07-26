


puts "Clearing old data..."
Audition.destroy_all
Role.destroy_all

puts "Seeding roles..."
characters = ["Alberto", "Tyler", "Oscar", "Batman", "Thor", "Loki", "Ethan", "Rock"]
# Create sample Auditions
characters.each do |character|
  Role.create(character_name: character)
end

puts "Seeding Auditions..."
# Create 10 random Readers
10.times do
  Audition.create(actor: Faker::Name.name, location: Faker::Address.city, phone: Faker::PhoneNumber.phone_number, hired: Faker::Boolean.boolean, role_id: rand(1..8))
end


puts "SEEDING COMPLETE!"


