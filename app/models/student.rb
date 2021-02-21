class Student < ApplicationRecord
  has_and_belongs_to_many :courses
  
  def full_name
    self.firstname + ' ' + self.lastname
  end
end
