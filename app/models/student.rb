class Student < ApplicationRecord
  belongs_to :teacher
  validates :name, uniqueness: true
  validates :reading_proficiency,  numericality: { only_integer: true }
  validates :math_proficiency, numericality: { only_integer: true }


end
