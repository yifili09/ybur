#Ruby通过模块 module来解决多继承的实现。如果在类中包含了一个模块，那么该模块的行为和常量也会成为类的一部分。
#-- 模块定义。 定义了两个方法 to_f方法把to_s方法的输入写入文件，filename方法提供了写入文件的文件名。 
module ToFile
	def filename
		"object_#{self.object_id}.txt"
	end

	def to_f
		File.open(filename,'w'){|f| f.write(to_s)}	
	end
end

class Person
	include ToFile
	attr_accessor :name

	def initialize(name)
		@name = name
	end

	def to_s
		name
	end
end

#Eample
Person.new("Matz").to_f
