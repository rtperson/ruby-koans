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
  check_triangle(a, b, c)
  result = :scalene
  if a == b && b == c
    result = :equilateral
  elsif a == b || b == c || a == c
    result = :isosceles
  end
  result
end

def check_triangle(a, b, c)
  if (a <= 0 || b <= 0 || c <= 0)
    raise TriangleError, "sides cannot be zero or negative"
  end
  sides = Array.new << a << b << c 
  srt = sides.sort
  if (srt[0] + srt[1]) <= srt[2]
    raise TriangleError, "sum of short sides cannot be less than or equal to long side"
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
