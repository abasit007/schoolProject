class AddStudentIdToSchedule < ActiveRecord::Migration[6.1]
  def change
    add_column :schedules, :student_id, :integer
  end
end
