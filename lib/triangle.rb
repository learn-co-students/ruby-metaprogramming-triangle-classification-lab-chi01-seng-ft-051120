require 'pry'

class Triangle

  class TriangleError < StandardError
    def message 
      "these are not valid lengths of a triangle"
    end 
  end

  attr_reader :length_1, :length_2, :length_3 

  def initialize(length_1, length_2, length_3)
    @length_1 = length_1
    @length_2 = length_2 
    @length_3 = length_3
  end 

  def kind 
    #test for triangle validity
    verdict = 0
    if self.length_1 <= 0
      verdict = 1
    elsif self.length_2 <= 0
      verdict = 1 
    elsif self.length_3 <= 0
      verdict = 1
    elsif self.length_1 + self.length_2 <= self.length_3
      verdict = 1 
    elsif self.length_2 + self.length_3 <= self.length_1
      verdict = 1
    elsif self.length_1 + self.length_3 <= self.length_2
      verdict = 1
    else 
      verdict = 0
    end
    #puts error if triangle is invalid
    if verdict == 1
      puts "testing123"
      begin
        raise TriangleError 
      end 
    #classifies triangle if valid
    else 
      type = :isosceles 
      if self.length_1 == self.length_2 && self.length_2 == self.length_3 
        type = :equilateral
        return type 
      elsif self.length_1 != self.length_2 && self.length_2 != self.length_3 && self.length_1 != self.length_3
        type = :scalene 
        return type
      else
        type 
      end
    end
  end 
  
  # def check_for_valid_triangle 
  #   verdict = true 
  #   if self.length_1 <= 0 || self.length_2 <= 0 || self.length_3 <= 0 ||
  #     verdict = false 
  #   elsif self.length_1 + self.length_2 <= self.length_3 || self.length_2 + self.length_3 <= self.length_1 || self.length_1 + self.length_3 <= self.length_2 
  #     verdict = false 
  #   end 
  #   return verdict
  # end 

      
end
