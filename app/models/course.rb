class Course < ActiveRecord::Base
  has_many :matriculas, dependent: :destroy
  has_many :students, through: :matriculas

  validates :name, :description, presence: true
  validates :status, presence: true
end
