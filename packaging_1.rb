class Triangle
	SIDES = 3
	def area
		#...
	end
end

class Square
	SIDES = 4
	def initialize(side_length)
		@side_length = side_length
	end
	
	def area
		@side_length * @side_length
	end
end

puts "A triagnle has #{Triangle::SIDES} sides"
sq = Square.new(3)
puts "Area of square = #{sq.area}"
puts "Math E #{Math::E} and Math PI #{Math::PI}"
