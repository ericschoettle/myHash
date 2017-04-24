require ('pry')
class Triangle
  define_method(:initialize) do |side1, side2, side3|
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  define_method(:side1) do
    @side1
  end
  define_method(:type) do
    if (@side1 + @side2 <= @side3) ||  (@side2 + @side3 <= @side1) || (@side1 + @side3 <= @side2)
      condition1 = @side1 + @side2
      condition2 = @side2 + @side3
      condition3 = @side1 + @side3
      # binding.pry
      "Not a triangle"
    elsif (@side1 == @side2) & (@side1 == @side3)
      "Equilateral"
    elsif (@side1 == @side2) || (@side1 == @side3) || (@side2 == @side3)
      "Isosceles"
    else
      "Scalene"
    end
  end

end
