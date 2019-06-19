
class Node
  attr_accessor :value, :l_child, :r_child

  def initialize(value, l_child, r_child)
      @value = value
      @l_child = l_child
      @r_child = r_child
  end
end

class Tree
  def initialize(value)
    @root = Node.new(value, nil, nil)
  end
  def add_to_tree
  end
  def remove()
  end
end
#4.1 Find if there is a pathway between node => Breadth First Search or Depth First Search
#4.2 Minimal Tree Increasing Order Array => The BST tree is inOrder Traverse => turn to balance tree
def minimal_tree(arr)
  head = arr[0]
  tail  =  arr[-1]
  return nil if head > tail
  mid = (head + tail)/2
  root = Tree.new(mid)
  root.l_child = minimal_tree(arr[0..mid-1])
  root.r_child = minimal_tree(arr[mid..-1])
end
