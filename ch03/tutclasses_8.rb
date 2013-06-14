#!/Users/yifili09/.rvm/rubies/ruby-1.9.3-p429/bin/ruby

class BookInStock
	attr_accessor :isbn,:price
	def initialize(isbn,price)
		@isbn = isbn
		@price = Float(price)
	end

#accessory method
#	def isbn
#		@isbn
#	end
	def price=(new_price)
		@price = new_price
	end

#	def price
#		@price
#	end
#----------
#-- Virtual Attributes
	def price_in_cents
		Integer(price*100 + 0.5)
	end

	def price_in_cents=(cents)
		@price = cents/100.0
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
puts "ISBN = #{b3.isbn} , PRICE = #{b3.price}"
b3.price = b3.price * 0.75
b3.isbn = "b3isbn"
puts "ISBN = #{b3.isbn} , PRICE = #{b3.price}"
puts "Price In Cent Demo"
book = BookInStock.new("isbn11",33.80)
puts "Price		= #{book.price}"
puts "Price in cents	= #{book.price_in_cents}"
book.price_in_cents = 1344
puts "Price		= #{book.price}"
puts "Price in cents	= #{book.price_in_cents}"

