class Pet < ActiveRecord::Base
  belongs_to :owner
  validates :name, :type_of_animal, presence: true
end
