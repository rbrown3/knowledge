class Teacher < ApplicationRecord
  has_many :students
  validates :name, presence: true
  validates :email, confirmation: true, uniqueness: true
end
