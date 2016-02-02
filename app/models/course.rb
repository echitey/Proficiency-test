class Course < ActiveRecord::Base
  validates :name, :description, presence: true
  validates :status, presence: true
end
