class Triangle
attr_reader :side_one, :side_two, :side_three
  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
  end

    def kind
      if side_one == 0 || side_two == 0 || side_three == 0
        raise TriangleError
      elsif side_one.negative? || side_two.negative? || side_three.negative?
        raise TriangleError
      elsif side_one + side_two <= side_three || side_two + side_three <= side_one || side_one + side_three <= side_two
        raise TriangleError
      elsif side_one == side_two && side_one == side_three
        return :equilateral
      elsif side_one != side_three && side_one != side_two && side_two != side_three
        return :scalene 
      else 
        return :isosceles
      end
    end


    class TriangleError < StandardError
      def message
        puts "Please enter valid side lengths."
      end
    end
end
