def words_from_string(string)
	# [\w'] matches sequences containing "word characters" and single quotes
	string.downcase.scan(/[\w']+/)
end

def count_frequency(word_list)
	counts = Hash.new(0)
	for word in word_list
		counts[word] += 1
	end
	counts
end

p words_from_string("But i didnot inhale, he said (emphatically)")
raw_text = File.read("para.txt")
word_list = words_from_string(raw_text)
counts = count_frequency(word_list)
sorted = counts.sort_by{ |word,count| count}
top_five = sorted.last(5)

top_five.each do |word,count|
	puts "#{word},#{count}"
end
