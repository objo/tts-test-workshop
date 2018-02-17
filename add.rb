def add(a,b)
  a + b
end

require 'test/unit'

class AddTest < Test::Unit::TestCase
  
  def test_adding_two_numbers
    assert_equal 4, add(2,2)
  end
  
  def test_adding_two_different_numbers
    assert_equal 6, add(2,4)
  end
  
end