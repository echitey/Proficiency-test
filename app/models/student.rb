class Student < ActiveRecord::Base
  has_many :matriculas, dependent: :destroy
  has_many :courses, through: :matriculas

  validates :name, presence: true, length: { minimum: 3 }
  validates :register_number, presence: true,length: { minimum: 2 }
  validates :status, presence: true
end
