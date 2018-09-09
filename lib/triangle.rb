class Triangle
  
  attr_accessor :side1, :side2, :side3
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  
  def kind
    validTriangle
      if side1 == side2 && side1 == side3
        :equilateral
      elsif side1 == side2 || side1 == side3 || side2 == side3
        :isosceles
      else
        :scalene
      end 
  end

  def validTriangle
      triangle_valid = true
    if side1+side2<=side3 || side2+side3<=side1 || side1+side3<=side2
      triangle_valid = false
    elsif side1 <= 0 || side2 <= 0 || side3 <= 0
      triangle_valid = false
    end
    raise TriangleError if triangle_valid == false
  end

  class TriangleError < StandardError
	  end
end



  # it 'knows that triangles with negative sides are illegal' do
  #   expect{Triangle.new(3, 4, -5).kind}.to raise_error(Triangle::TriangleError)

  # it 'knows that triangles violating triangle inequality are illegal' do
  #   expect{Triangle.new(1, 1, 3).kind}.to raise_error(Triangle::TriangleError)

  # it 'knows that triangles violating triangle inequality are illegal 2' do
  #   expect{Triangle.new(2, 4, 2).kind}.to raise_error(Triangle::TriangleError)

  # it 'knows that triangles violating triangle inequality are illegal 3' do
  #   expect{Triangle.new(7, 3, 2).kind}.to raise_error(Triangle::TriangleError)


