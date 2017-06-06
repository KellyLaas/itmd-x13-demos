class CreateCoursesSchedulesJoinTable < ActiveRecord::Migration[5.1]
  def change
    create_table :courses_schedules, id: false do |t|
      t.belongs_to :course, index: true
      t.belongs_to :schedule, index: true
    end
  end
end
