#!/Users/yifili09/.rvm/rubies/ruby-1.9.3-p429/bin/ruby

class BookInStock
	attr_accessor :isbn,:price
	def initialize(isbn,price)
		@isbn = isbn
		@price = Float(price)
	end
	def to_s
		"ISBN: #{@isbn} , price: #{@price}"
	end
end

