class AddDefaultValueToStudentStatus < ActiveRecord::Migration
  def up
    change_column :students, :status, :integer, default: 0
  end

  def down
  end
end
