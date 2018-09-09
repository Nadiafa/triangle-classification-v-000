class Triangle
  
  attr_accessor :side1, :side2, :side3
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  
  def kind
    if validTriangle?
      if @side1 == @side2 && @side1 == @side3
        :equilateral
      elsif @side1 == @side2 || @side1 == @side3 || @side2 == @side3
        :isosceles
      else
        :scalene
      end 
    else 
      begin 
        raise TriangleError
      rescue TriangleError
      end
    end
  end

  def validTriangle?
    if !@side1 || !@side2 || !@side3
      false
    elsif @side1.is_i? || @side1.is_f? || @side2.is_i? || @side2.is_f? || @side3.is_i? || @side3.is_f?
      false
    elsif  @side1+@side2<@side3 || @side2+@side3<@side1 || @side1+@side3<@side2
      false
    elsif @side1<= 0 || @side2<= 0 || @side3<= 0
      false
    end
    true
  end

  class TriangleError < StandardError
	    def message 
	      "The triangle is invalid."
	    end
	  end

end

