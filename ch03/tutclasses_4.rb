#!/Users/yifili09/.rvm/rubies/ruby-1.9.3-p429/bin/ruby

class BookInStock
	def initialize(isbn,price)
		@isbn = isbn
		@price = Float(price)
	end
	
	def to_s
		"ISBN: #{@isbn} , price: #{@price}"
	end
end

b1 = BookInStock.new("isbn1",3)
p b1
puts b1
b2 = BookInStock.new("isbn2",3.11)
p b2
puts b2
b3 = BookInStock.new("isbn3","331")
p b3
puts b3
