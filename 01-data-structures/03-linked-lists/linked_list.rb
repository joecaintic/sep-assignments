require 'node'

class LinkedList
  attr_accessor :head
  attr_accessor :tail

  # This method creates a new `Node` using `data`, and inserts it at the end of the list.
  def add_to_tail(node)
      node = Node.new(data)
      @tail = node
  end

  # This method removes the last node in the lists and must keep the rest of the list intact.
  def remove_tail
      
      LinkedList.delete(@tail)
  end

  # This method prints out a representation of the list.
  def print
      print LinkedList
  end

  # This method removes `node` from the list and must keep the rest of the list intact.
  def delete(node)
      LinkedList.delete(node)
  end

  # This method adds `node` to the front of the list and must set the list's head to `node`.
  def add_to_front(node)
      node = Node.new(data)
      @head = node
  end

  # This method removes and returns the first node in the Linked List and must set Linked List's head to the second node.
  def remove_front
      temp = @head
      @head = @head.next
      LinkedList.delete(temp)
      return temp
  end
    
end