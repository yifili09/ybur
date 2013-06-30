#把可执行的代码派发给其他方法。在Ruby中，代码快不仅可以用于循环，还可用于延迟执行：
def call_back(&block)
	block.call
end

def pass_block(&block)
	call_back(&block)
end

pass_block{ puts "Hello block!"}

#execute_at_noon {puts "beep beep...time to get up!"}
