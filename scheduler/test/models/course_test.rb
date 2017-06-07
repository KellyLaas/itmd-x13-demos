require 'test_helper'

class CourseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "must have a subject and a location" do
    @course = Course.new
    assert @course.invalid?
    assert @course.errors[:subject].any?
    assert @course.errors[:location].any?
  end
end
