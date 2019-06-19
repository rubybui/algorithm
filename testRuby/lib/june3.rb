"""class Stack
  attr_reader :max_size
  over_flow = Class.new(StandardError)
  under_flow = Class.new(StandardError)
  def initialize()
      @store = Array.new
      end
  end
  def push(value)
    fail over_flow if size >= max_size
    @store.push(value)

  def pop
    fail under_flow if empty?
    @store.
  end
end
end
"""
class Stack_node
  attr_accessor :data, :next
  def initialize(data)
      @data = data
  end
  def pop
      top = @data
      return nil if top == nil
      current_node = @data
      top = @next
  end
  def push(item)
      temp = Stack_node.new(item)
      temp.next = @data
      top = temp
   end
end 
