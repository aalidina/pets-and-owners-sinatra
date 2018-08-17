class Pet < ActiveRecord::Base
  belongs_to :owner
  validates :name, :type_of_animal, presence: true

  def self.all_pets_speak
    all.each {|p| puts "Hello! I'm #{p.name} and I'm a #{p.breed} #{p.type_of_animal}, I'm #{p.age} years old, and I belong to #{p.owner.name}"}
  end
end
