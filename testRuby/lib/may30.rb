class Node
  attr_accessor :value, :next

  def initialize(value, next_node)
      @value = value
      @next = next_node
  end
end

class Singly_linked_list

  def initialize(value)
    @head = Node.new(value, nil)
  end

  def add_to_list(value)
    current_node = @head
    while current_node!=nil && current_node.next != nil
      current_node = current_node.next
    end
    current_node.next = Node.new(value, nil)
    #add to end of
  end

  def delete(value)
    current_node.next = @head
    if current_node.value == value
      @head = current_node.next
    else
      while (current_node.next != nil) && (current_node.next.val != val)
        current_node = current_node.next
      end
      unless current_node.next == nil
        current_node.next = current_node.next.next
      end
    end
  end
end

def remove_dup(head_node)
    temp = ls
    dict = {}
    newLs = Singly_linked_list()
    while temp!= nil
        current = temp.value
        if dict.include? (current)
            newLs.next = temp.next
        else
            dict.add(current)
            newLs.next = temp
        end
        temp = temp.next
    end
    return newLs
end

def returnKthToLast(ls, k)
    temp = ls
    count = 0
    arr = []
    while temp!= nil
        if count > k
            arr.append(temp.head)
            count +=1
            temp = temp.next
        end
    end
    return arr
end

def partition(ls, x)
    temp = ls
    newLs = Singly_linked_list()
    while temp != nil
        if temp.value < x
                #I only want to add value here, not a whole list
            newLs.add_to_list(temp.head)
        end
        temp = temp.next
    end
    temp = ls
    while temp!= nil
        if temp.value >= x
            newLs.add_to_list(temp.head)
        end
        temp = temp.next
    end
    return newLs
end

def sum_lists(ls1, ls2)
  #So first I compare length of 2 lists to find the shorter list. Traverse the list until
end
def palindrome(ls)
  slow_pointer = ls
  fast_pointer = ls
  data = {}
  while fast_pointer != nil && fast_pointer.next != nil do #(fast_pointer= nil happened if odd element)
    fast_pointer = fast_pointer.next.next
    data.push(slow_pointer.value)
    slow_pointer = slow_pointer.next
  end
  #Here, fast_pointer either reach the end or fast_pointer.next reach the end
  #01234 fast_pointer.next.next will point to 2,4 which is odd position
  if (fast_pointer == nil) #odd number => need to avoid the middle (where slow_pointer is pointing)
    slow_pointer = slow_pointer.next
  end
  i = 0
  """while slow_pointer != nil do
    if slow_pointer.value != data[i]
      return false
    end
    i = i + 1
    slow_pointer = slow_pointer.next
  end"""
  data.each do |el|
    if el != slow_pointer.value
      return false
    end
    slow_pointer = slow_pointer.next
  end
end
