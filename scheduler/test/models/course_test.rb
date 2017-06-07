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

  test "subject must be 2-4 letters, 3 numbers" do
    good = ['CS 104', 'COM 001', 'ITMD 413']
    bad = ['A 111', 'Humanities 151', 'com 222', 'ITMD 22', 'ITMD 2222', 'CS', '251', 'ITMD 513 SOMETHING', "ITMD 513\n\npwned"]
    def new_subject(subject)
      course = Course.new(location: "SH 218", subject: subject)
    end
    good.each do |subject|
      assert new_subject(subject).valid?, "#{subject} should be valid"
    end
    bad.each do |subject|
      assert new_subject(subject).invalid?, "#{subject} should not be valid"
    end
  end
  test "location must be 2-4 letters, 3 numbers or whatever the Tower does" do
    good = ['SH 218', 'MTCC 209', 'IT 8E4-1']
    bad = ['Siegel Hall 109', 'MTCCCC 2', 'PH 25']
    def new_location(location)
      course = Course.new(location: location, subject: 'ITMD 413')
    end
    good.each do |location|
      assert new_location(location).valid?, "#{location} should be valid"
    end
    bad.each do |location|
      assert new_location(location).invalid?, "#{location} should not be valid"
    end
  end
end
