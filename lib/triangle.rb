class Triangle
  
  
  def initialize(length_1,length_2,lenght_3)
    @triangle_sides = [] 
    @triangle_sides << length_1
    @triangle_sides << length_2
    @triangle_sides << length_3
  end 
  
  def valid?
    sum_one_two = @triangle_sides[0] + @triangle_sides[1]
    sum_one_three = @triangle_sides[0] + @triangle_sides[2]
    sum_two_three = @triangle_sides[1] + @triangle_sides[2]
    
    if (@triangle_sides.none? {|side| side <= 0}) && 
       (sum_one_two > @triangle_sides[2] && sum_one_three > @triangle_sides[1] && sum_two_three > @triangle_sides[0])
       return true 
     else 
       return false 
     end 
  end 
  
  def kind 
    if valid? 
      if @triangle_sides.uniq.length == 1 
        return :equilateral 
      elsif @triangle_sides.uniq.length == 2 
        return :isosceles 
      else 
        return :scalene 
      end
    else 
      raise TriangleError 
    end 
  end 
    

class TriangleError < StandardError 
end 


end 
