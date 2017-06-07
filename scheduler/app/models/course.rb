class Course < ApplicationRecord
  has_and_belongs_to_many :schedules
  validates :subject, :location, presence: true
  validates :subject, format: {
    with: /\A[A-Z]{2,4} \d{3}\z/,
    message: "subject must be XXXX 123"
  }
end
