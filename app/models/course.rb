class Course < ActiveRecord::Base
  has_many :matriculas, dependent: :destroy
  has_many :students, through: :matriculas

  validates :name, presence: true, length: { minimum: 3 }
  validates :description, presence: true, length: { minimum: 10 }
  validates :status, presence: true
end
