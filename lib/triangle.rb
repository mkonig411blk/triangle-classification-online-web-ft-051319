class Triangle
  def initialize(length, height, width)
    @length = length
    @height = height
    @width = width
  end
  
  def kind 
    if @length == nil || @width == nil || @height == nil
    if @length == @height && @length == @width
      :equilateral
    elsif @length == @height || @height == @width || @width == @length
    :isosceles
  else
    :scalene
  end
end

class TriangleError < StandardError
    # triangle error code
  end

end