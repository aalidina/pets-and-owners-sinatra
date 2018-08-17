class Pet < ActiveRecord::Base
  belongs_to :owner
  validates :name, :type_of_animal, presence: true

  # 1. Build a class method that returns all dogs
    def self.return_all_dogs
       select {|dogs| dogs.type_of_animal == "dog"}
    end

  # 2. Build a class method that returns all cats
  def self.return_all_dogs
     select {|cats| cats.type_of_animal == "cat"}
  end

  # 3. Build a class method that returns all pets of a particular breed.  It should take an argument, a string that represents the breed
  def self.return_all_breeds(breed_type)
     select {|type| type.breed == breed_type}
  end

  # 4. Build a class method that takes an argument of a breed, but `puts` a message for every matching pet that talks about itself, such as:
  #  Hello! I'm Poppy, I'm 9 years old, and I belong to Walden Macnair

  def self.talking_pet(breed_name)
    Pet.select do |pet|
      if pet.breed == breed_name
        puts "Hello! I'm #{pet.name}, I'm #{pet.age} years old, and I belong to #{pet.owner.name}"
      end
    end
  end

  # 5. BONUS - build a finder method that takes a key/value pair.  The key represents an attribute and the value is its value.
  #  It should return any pets that match that attribute/value pair.  Example:
  #  Pet.find_all_by_attribute(name: "Garfield") would return all pets named Garfield.

end
