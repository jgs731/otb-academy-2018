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
  raise TriangleError if zero_dimensions?(a,b,c) || negative_dimensions?(a, b, c)

  if (a == b) && (b == c) && (a == c)
  	:equilateral
  elsif ((a == b ) && (c < a)) || ((b == c) && (a < b)) || ((a == c) && (b < c))
  	:isosceles
  elsif (a != b) && (b != c) && (a != c)
  	:scalene
  else
  	raise TriangleError
  end
end

def zero_dimensions?(a, b, c)
	a.zero? || b.zero? || c.zero?
end

def negative_dimensions?(a, b, c)
	a.negative? || b.negative? || c.negative?
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end

