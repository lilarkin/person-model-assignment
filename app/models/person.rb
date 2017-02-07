class Person < ApplicationRecord

  def self.genders
    ['Male', 'Female', 'Other']
  end

  validates_presence_of :name, :age, :eye_color, :hair_color, :gender, :alive
  validates_inclusion_of :gender, in: genders

  def info
    "#{name} is #{age} year old #{gender} with #{eye_color} eyes and #{hair_color} hair who is alive: #{alive}."
  end

  def names
    "#{name}"
  end

end
