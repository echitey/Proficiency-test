class Student < ActiveRecord::Base
  has_many :matriculas, dependent: :destroy
  has_many :courses, through: :matriculas

  validates :name, :register_number, presence: true
  validates :status, presence: true
end
