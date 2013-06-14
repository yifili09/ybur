#!/Users/yifili09/.rvm/rubies/ruby-1.9.3-p429/bin/ruby
require 'csv'
require_relative 'book_in_stock'

class CsvReader
	def initialize
		@books_in_stock = []
	end

	def read_in_csv_data(csv_file_name)
		#Tell the CSV library to open the file with the given name. {headers: true} option tells the library to parse the first line of the file as the names of columns. The library reads the rest of file, passing each row in turn to the block.
		CSV.foreach(csv_file_name,headers: true) do |row|	
			@books_in_stock << BookInStock.new(row["ISBN"],row["Amount"])
		end
	end

	def total_value_in_stock
	#..
		sum = 0.0
		@books_in_stock.each{|book| sum += book.price}
		sum
	end

	def number_of_each_isbn
	#..
	end
end

reader = CsvReader.new
reader.read_in_csv_data("file1.csv")
#puts "Total value in stock = #{reader.total_value_in_stock}"
