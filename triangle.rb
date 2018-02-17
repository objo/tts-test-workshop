# return :scalene, :isosceles, :equilateral
#
# scalene:      no equal 
# isosceles:    2 equal 
# equilateral:  3 equal 
# 
def triangle(a,b,c)
  unless a.is_a?(Numeric) && b.is_a?(Numeric) && c.is_a?(Numeric)
    return nil
  end
  if a < 0 || b < 0 || c < 0
    return nil
  end
  sides = [a,b,c].uniq.size
  case sides 
  when 1 then return :equilateral
  when 2 then return :isosceles
  when 3 then return :scalene
  end
end