class AddStudentReferenceToSchedule < ActiveRecord::Migration[5.1]
  def change
    add_reference :schedules, :student, foreign_key: true
  end
end
