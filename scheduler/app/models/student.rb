class Student < ApplicationRecord
  has_one :schedule
  accepts_nested_attributes_for :schedule

  def name
    "#{first_name} #{last_name}"
  end

  def name_from_parts(name)
    name_parts = name.split(" ")
    self.last_name = name_parts.pop
    self.first_name = name_parts.join(" ")
  end
end
