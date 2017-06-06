class Student < ApplicationRecord
  has_one :schedule
  accepts_nested_attributes_for :schedule
end
