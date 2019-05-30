class Triangle
  def initialize(length, height, width)
    @length = length
    @height = height
    @width = width
  end
  
  def kind 
    if @length == @height && @length == @width
      :equilateral
    elsif @length == @height || @height == @width || @width == @length
    :isoceles
  else
    :scalene
  end
end

end