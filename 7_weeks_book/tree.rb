#利用代码块和递归，访问所有的结点。每个结点都有一个name,
#visit方法调用传入的代码块。visit_all方法先对当前结点调用visit方法，然后对每个子结点递归调用visit_all方法。

class Tree
	attr_accessor :children,:node_name
	
	def initialize(name,children=[])
		@children = children
		@node_name = name
	end	
	
	def visit_all(&block)
		visit &block
		children.each{|c| c.visit_all &block}
	end
	
	def visit(&block)
		block.call self
	end
end

ruby_tree = Tree.new("Ruby",[Tree.new("Reia"),Tree.new("MacRuby")])

puts "Visiting a node"
ruby_tree.visit {|node| puts node.node_name}
puts
puts "visiting entire tree"
ruby_tree.visit_all{|node| puts node.node_name}
