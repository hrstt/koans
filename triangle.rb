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
  # WRITE THIS CODE
  if [a, b, c].delete_if{|l| l <= 0 }.size < 3
    raise TriangleError
  elsif [a,b,c].uniq.size == 1
    :equilateral
  elsif [a,b,c].uniq.size == 3
    :scalene
  else
    tri = [a, b, c]
    largest = tri.max
    tri.delete(largest)
    
    if tri.size == 2 && largest >= tri.inject(:+)
      raise TriangleError
    else
      :isosceles
    end
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
