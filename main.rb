MAX_COURSES = 5

class Student

  def add_to_schedule(schedule, quarter_id, course)
    course_list = quarter_schedule(schedule, quarter_id)
    if count(course_list) < MAX_COURSES
      course_list.add(course)
    end
  end

  def remove_from_schedule(schedule, quarter_id, course)
    course_list = quarter_schedule(schedule, quarter_id)
    course_list.remove(course)
  end

  def quarter_schedule(schedule, quarter_id)
    quarter = schedule.quarter[quarter_id]
  end

end
