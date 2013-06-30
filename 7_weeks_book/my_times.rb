#这段代码，打开一个现有的类，并向其中添加自定义方法。
#他使用 yield 调用代码块，并给定循环次数。
class Fixnum
	def my_times
		i = self
		while i > 0
			i = i - 1
			yield #执行代码块
		end
	end
end

4.my_times{puts "It is my_times yield!"}
