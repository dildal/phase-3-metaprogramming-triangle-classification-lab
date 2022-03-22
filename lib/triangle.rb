class Triangle
  attr_accessor :s1, :s2, :s3
  def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
  end

  def kind
    if isValid? self
      if(self.s1 == self.s2)
        if(self.s1 == s3)
         return :equilateral
        else
          return :isosceles
        end
      elsif(self.s1 == s3)
        return :isosceles
      elsif(self.s2 == self.s3)
        return :isosceles
      else
        return :scalene
      end
    else
      raise TriangleError
    end
  end

  def isValid? triangle
    (triangle.s1 > 0 && 
      triangle.s2 > 0 &&
      triangle.s3 > 0 &&
      triangle.s1 + triangle.s2 > triangle.s3 &&
      triangle.s1 + triangle.s3 > triangle.s2 &&
      triangle.s2 + triangle.s3 > triangle.s1
    )
  end

  class TriangleError < StandardError
    def message
      "That is not a traingle"
    end
  end
end

puts Triangle.new(5,5,5).kind
puts Triangle.new(5,4,5).kind
puts Triangle.new(5,4,3).kind
puts Triangle.new(50,4,3).kind
puts Triangle.new(50,4,3).kind