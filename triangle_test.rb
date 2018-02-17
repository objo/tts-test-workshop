require 'test/unit'
require './triangle'

class TriangleTest < Test::Unit::TestCase

  def test_scalene_no_equal_sides
    assert_equal :scalene, triangle(1,2,3)
    assert_equal :scalene, triangle(5,6,7)
    assert_not_equal :scalene, triangle(1,1,1)
  end
  
  def test_isosceles_two_equal_sides
    assert_equal :isosceles, triangle(1,1,2)
    assert_equal :isosceles, triangle(4,4,6)
    assert_not_equal :isosceles, triangle(1,2,3)
    assert_not_equal :isosceles, triangle(1,1,1)
  end
  
  def test_equilateral_all_equal_sides
    assert_equal :equilateral, triangle(1,1,1)
    assert_equal :equilateral, triangle(4,4,4)
    assert_not_equal :equilateral, triangle(4,2,4)
    assert_not_equal :equilateral, triangle(6,7,9)
  end
  
  def test_arguments_must_be_numbers
    assert_equal nil, triangle("a", "a", "a")
    assert_equal nil, triangle(1, 1, nil)
  end
  
  def test_numbers_must_be_positive_numbers
    assert_equal nil, triangle(-1, -1, -1)
  end
end