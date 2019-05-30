class Triangle
  def initialize(length, height, width)
    @length = length
    @height = height
    @width = width
  end
  
  def kind 
    if @length == nil || @width == nil || @height == nil || @length <= 0 || @width <= 0 || @height <= 0
      begin 
      raise TriangleError
      rescue TriangleError => error
          puts error.message
      end
    elsif @length == @height && @length == @width
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