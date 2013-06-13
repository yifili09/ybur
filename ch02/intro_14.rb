#!/Users/yifili09/.rvm/rubies/ruby-1.9.3-p429/bin/ruby
a =['ant','bee','cat','dog','elk']	
puts a[0]
puts a[3]

#This is the same
a = %w{ant bee cat dog elk 1}
puts a[0]
puts a[5]

inst_setcion = {
	'cello' => 'string',
	'clarinet' => 'woodwind',
	'drum' => 'percussion',
	'oboe' => 'woodwind',
	'trumpt' => 'brass',
	'violin' => 'string'
}

#print the hash
p inst_setcion['cello']
p inst_setcion['clarinet']
p inst_setcion['drum']
p inst_setcion['aaa']

histogram = Hash.new(0) #The default value is zero
p histogram['ruby']
p histogram['ruby'] = histogram['ruby']+1
p histogram['ruby']

#hash with symbols
inst_setcion_with_symbol = {
	:cello => 'string',
	:clarinet => 'woodwind',
	:drum => 'percussion',
	:oboe => 'woodwind',
	:trump => 'brass',
	:violin => 'string'
}

p inst_setcion_with_symbol[:cello]

#default symbole using name: value pareise
inst_setcion_with_symbol = {
	cello:	'string',
	clarinet:	'woodwind',
	drum:'percussion',
	oboe:  'woodwind',
	trump: 'brass',
	violin: 'string'
}

p inst_setcion_with_symbol[:cello]
