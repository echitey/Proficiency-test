class Matricula < ActiveRecord::Base
  belongs_to :student
  belongs_to :course

  before_save :get_date

  def get_date
    self.entry_at = DateTime.now
  end
end
