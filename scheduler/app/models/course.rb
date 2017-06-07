class Course < ApplicationRecord
  has_and_belongs_to_many :schedules
  validates :subject, :location, presence: true
end
