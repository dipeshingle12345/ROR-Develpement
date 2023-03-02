# 1) divide a given array into two arrays. one with numbers smaller than or equal to  5 and another with number greater than 5


# def divideArray(arr)
#     arr1 = arr.select{|num|num<=5}
#     arr2 = arr.select{|num|num>5}
#     return arr1,arr2
     
# end
# arr1,arr2 =  divideArray([1,2,8,4,5,6,7,8,9])
# puts "Numbers less than or equal to 5: #{arr1}"
# puts "Numbers greater than 5: #{arr2}"








# 2) append and prepend 0 to a given array
# def appendPrependarray(arr)

#     arr.push(0)
#     arr.unshift(0)
    
#     return arr
     
# end
# puts appendPrependarray([1,2,3])




# get rid of duplicates in a given array.(with and without inbuilt function)
# def removeDuplicates(arr)
# arr.uniq
# end
# puts removeDuplicates([1,1,2,2,3,3,4,4])

# def removeDuplicates(arr)
#     uniqueElements  = []
#     arr.each do |elem|
#         if !uniqueElements.include?(elem)
#             uniqueElements.push(elem)
#         end
#     end
#     return uniqueElements
# end
# puts removeDuplicates([1,1,2,2,3,3,4,4])


# 4) display hash in alphabetical order of keys. hash example {'water' => 'Koruk', 'earth' => 'Kyioshi', 'fire' => 'Roku', 'air' => 'Aang', 'spirit' => 'Korra'}

# def alphabatcalHash(hashElem)
#    hashKeys = hashElem.keys.sort
#    sortedHash = {}
#    hashKeys.each do |key|
#         puts sortedHash[key] = hashElem[key]
#     end
#     return sortedHash
# end
# alphabatcalHash( {'water' => 'Koruk', 'earth' => 'Kyioshi', 'fire' => 'Roku', 'air' => 'Aang', 'spirit' => 'Korra'})



# 5) write classes to calculate area and perimeter of different shapes(triangle, quadrilateral, rectangle, square, rhombus, parallelogram, trapezium, circle)

  # class Circle 
  #   def initialize(radius)
  #     @radius = radius
  #   end
    
  #   def area
  #     3.141 * @radius*@radius
  #   end
    
    # def perimeter
    #   2 * 3.141 * @radius
    # end
  # end
 
  # class Triangle 
  #   def initialize(base,height,side1,side2,side3)
  #     @base = base
  #     @height=height
  #     @side1=side1
  #     @side2=side2
  #     @side3=side3
  #   end
    
  #   def area
  #    0.5* @base * @height
  #   end
    
  #   def perimeter
  #     @side1+@side2+@side3
  #   end
  # end
  
  
# circle = Circle.new(12)
#  puts circle.perimeter
#  puts circle.area

#  triangle = Triangle.new(12,13,12,12,12)
#  puts triangle.perimeter
#  puts triangle.area

# class Quadrilateral 
#     def initialize(side1, side2, side3, side4)
#       @side1 = side1
#       @side2 = side2
#       @side3 = side3
#       @side4 = side4
     
#     end

#     def perimeter
#         @side1+@side2+@side3+@side4
#     end
#     def area 

#     end
    
   
#   end

#   quadrilateral = Quadrilateral.new(12,12,12,12)
#   puts quadrilateral.perimeter
  
#   class Rectangle < Quadrilateral
#     def initialize(length, breadth)
#       super(length, breadth, length, breadth)
#     end
    
#     def area
#       @side1 * @side2
#     end
#   end

#   rectangle = Rectangle.new(12,12)
#   puts rectangle.perimeter
#   puts rectangle.area 




class Shape
  def perimeter
    sides.sum
  end
end

class Triangle < Shape
  def initialize(side1, side2, side3, base, height)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    @base = base
    @height = height
  end

  def sides
    [@side1, @side2, @side3]
  end
end

class Quadrilateral < Shape
  def initialize(side1, side2, side3, side4)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    @side4 = side4
  end

  def sides
    [@side1, @side2, @side3, @side4]
  end
end

class Trapezium < Quadrilateral
  def initialize(side1, side2, side3, side4)
    super(side1, side2, side3, side4)
  end
end

# #  ______________________
# #  \   |                 \
# #   \  |                  \
# #    \ |                   \
# #     \|____________________\

class Parallelogram < Quadrilateral
  def initialize(base, slant, height)
    super(base, slant, base, slant)
    @height = height
  end

  def area
    @side1 * @height
  end
end

class Rectangle < Parallelogram
  def initialize(length, breadth)
    super(length, breadth, breadth)
  end
end






  class Square < Shape

    def initialize(side)
      @side1 = side
      @side2 = side
      @side3 = side
      @side4 = side
    end
  
    def sides
      [@side1, @side2, @side3, @side4]
    end
  end



  class Rhombus < Square

    def initialize(side)
      @side1 = side
      @side2 = side
      @side3 = side
      @side4 = side
    end
  
    def sides
      [@side1, @side2, @side3, @side4]
    end

  end

class Circle < Shape
      def initialize(radius)
      @radius = radius
    end
    
    def area
      3.141 * @radius*@radius
    end
    def perimeter
      2 * 3.141 * @radius
    end
    
   
end

# tri1 = Triangle.new(1, 2, 3, 2, 1.5)
# puts "Perimeter of triangle #{tri1.perimeter}"

# q1 = Quadrilateral.new(1, 2, 3, 4)
# puts "Perimeter of quadilateral #{q1.perimeter}"

# tra1 = Trapezium.new(1, 2, 2, 3)
# puts "Perimeter of trapezium #{tra1.perimeter}"

# par1 = Parallelogram.new(5, 3, 2)
# puts "Perimeter of parallelogram #{par1.perimeter}"
# puts "Area of parallelogram #{par1.area}"

# rec1 = Rectangle.new(6, 2)
# puts "Perimeter of rectangle #{rec1.perimeter}"
# puts "Area of rectangle #{rec1.area}"


circle = Circle.new(12)
 puts circle.perimeter
 puts circle.area


 square = Square.new(12)
 puts square.perimeter


 rhombus = Rhombus.new(12)
 puts rhombus.perimeter






