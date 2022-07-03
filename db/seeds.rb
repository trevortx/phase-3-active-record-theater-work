puts "Creating roles..."
Role.create(character_name: "Homer Simpson")
Role.create(character_name: "Robert Baratheon")
Role.create(character_name: "The Doctor")
Role.create(character_name: "Howl")
puts "Roles loaded"

puts "Creatings auditions..."
Audition.create(actor: "John Travolta", location: "New York", phone: 123, hired: false, role_id: 1)
Audition.create(actor: "Tom Cruise", location: "Los Angeles", phone: 987, hired: false, role_id: 2)
Audition.create(actor: "Scarlett Johansson", location: "Miami", phone: 456, hired: true, role_id: 3)
Audition.create(actor: "Joaquin Phoenix", location: "London", phone: 789, hired: false, role_id: 4)
puts "Auditions loaded"