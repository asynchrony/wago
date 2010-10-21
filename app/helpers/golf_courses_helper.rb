module GolfCoursesHelper
  def fields_for_hole(hole, &block)
    fields_for("golf_course[holes][]", hole, &block)
  end
end