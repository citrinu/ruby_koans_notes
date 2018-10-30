# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)

  tri_array = [a, b ,c]
  # sides a + b < C
  #negative side
  #all sides are 0


  check_for_line(tri_array)
  check_for_length(a, b, c)




  if tri_array.uniq.length == 2
    :isosceles

  elsif tri_array.uniq.length == 1
      :equilateral
  elsif tri_array.uniq.length == 3
    :scalene
  end
end

def check_for_line(triangle_array)
  check = 0
  triangle_array.each do |t|
    check += t
  end

  if check == 0
    raise TriangleError, "This is a line or point"
  end
end

def check_for_length(a, b, c)

  if ((a + b) <= c) || ((b + c) <= a) || ((a + c) <= b)
    raise TriangleError, "Sum of 2 sides must be greater than the third"
  end
end


# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
