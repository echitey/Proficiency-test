class Student < ActiveRecord::Base
  validates :name, :register_number, presence: true
  validates :status, presence: true
end
