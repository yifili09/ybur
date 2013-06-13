#!/Users/yifili09/.rvm/rubies/ruby-1.9.3-p429/bin/ruby

# example of code block
#{puts "hello code blcok"}

def call_back
	puts "start of method"
	yield
	yield
	puts "end of method"
end

call_back {puts "In the block"}
# The code in the block is executed twice, once for each to yield.o

def who_says_what
	yield("Dave","Hello")
	yield("Andy","goodbye")
end

who_says_what{ |person,phrase| puts "#{person} says #{phrase}"}

# Code block fetch elements in the array
animals = %w{ant bee act dog elk}
animals.each{|animal| puts "animal:#{animal}"}

#more times call the method
10.times {print "*"}
3.upto(6) {|i| p  i}
('a'..'e').each {|char| p char}
