class Triangle
  
attr_accessor :sides
  def initialize(side1, side2, side3)
    @sides = [side1, side2, side3].sort
  end

  def kind
    self.sides.each do |side| 
      if side <= 0
        raise TriangleError
      elsif self.sides[0] + self.sides[1] <= self.sides[2]
        raise TriangleError
      end
    end
    if @sides[0] == sides[1] && @sides[1] == sides[2]
      :equilateral
    elsif @sides[0] == @sides[1] || @sides[1] == @sides[2]
      :isosceles
    else
      :scalene
    end

  end

  class TriangleError < StandardError
  end


end
