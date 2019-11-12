class Triangle
  
  
  def initialize(length_1,length_2,lenght_3)
  end 
  
  def kind(length_1,length_2,length_3)
    if length_ == length_2 == lenght_3 
      puts :equilateral
    elsif (length_1 == length_2) != length_3 
      puts :isosceles 
    elsif
      puts :scalene
    else 
      raise TriangleError 
    end 
  end 
    

class TriangleError < StandardError 
end 


end 
