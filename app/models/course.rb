class Course < ApplicationRecord
  has_and_belongs_to_many :students

  def full_name
    self.name + " (" + self.course_id + ')'
  end

  def class_times
    days_of_week = ["Mon.", "Tues.", "Wed.", "Thurs.", "Fri."]
    course_days = []

    days_array = self.days.split(',').map { |el| (el == 't') }
    days_array.each_with_index {
      |el, index| course_days.push(days_of_week[index]) if el
    }
    course_days.join(", ") + ", " + self.start_time + " - " + self.end_time
  end
end
