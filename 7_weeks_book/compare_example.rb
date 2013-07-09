
puts 'begin' <=> 'end'
puts 'same' <=> 'same'
a = [5,4,3,2,1,0]
puts a.sort
puts a.any? {|i| i > 6}
puts a.any? {|i| i > 4}
puts a.all? {|i| i > 3}
puts a.collect {|i| i*2}
puts a.select {|i| i % 2 == 0} #even
puts a.select {|i| i % 2 == 1} #odd
puts a.max
puts a.member?(2)

puts "Inject"
a = [5,4,3,2,1]

a.inject(0) do |sum,i|
	puts "sum :#{sum} i:#{i} sum + i:#{sum + i}"
	sum + i
end

