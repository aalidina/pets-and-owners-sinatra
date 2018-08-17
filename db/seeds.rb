10.times do
  Owner.create(
    name: Faker::HarryPotter.character
  )
end

10.times do
  Owner.create(
    name: Faker::Seinfeld.character
  )
end

10.times do
  Owner.create(
    name: Faker::HarryPotter.character
  )
end

10.times do
  Owner.create(
    name: Faker::FunnyName.two_word_name
  )
end

10.times do
  Owner.create(
    name: Faker::DumbAndDumber.character
  )
end

num_owners = Owner.count

50.times do
    Pet.create(
      name: Faker::PrincessBride.character,
      type_of_animal: "dog",
      age: rand(1..20),
      breed: Faker::Dog.breed,
      owner_id: rand(1..num_owners)
    )
end

50.times do
    Pet.create(
      name: Faker::Dog.name,
      type_of_animal: "dog",
      age: rand(1..20),
      breed: Faker::Dog.breed,
      owner_id: rand(1..num_owners)
    )
end

50.times do
    Pet.create(
      name: Faker::LordOfTheRings.character,
      type_of_animal: "cat",
      age: rand(1..20),
      breed: Faker::Cat.breed,
      owner_id: rand(1..num_owners)
    )
end

50.times do
    Pet.create(
      name: Faker::BackToTheFuture.character,
      type_of_animal: "dog",
      age: rand(1..20),
      breed: Faker::Dog.breed,
      owner_id: rand(1..num_owners)
    )
end

50.times do
    Pet.create(
      name: Faker::Cat.name,
      type_of_animal: "cat",
      age: rand(1..20),
      breed: Faker::Cat.breed,
      owner_id: rand(1..num_owners)
    )
end
