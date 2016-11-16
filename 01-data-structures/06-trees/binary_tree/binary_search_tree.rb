require_relative 'node'

class BinarySearchTree

  def initialize(root)
      @root = root
  end

  def insert(root, node)
      if root.rating >= node.rating
         root.left.nil? ? root.left = node : self.insert(root.left, node)
      else
         root.right.nil? ? root.right = node : self.insert(root.right, node)
      end
  end

  # Recursive Depth First Search
  def find(root, data)
      match = root
      return nil if data.nil?
      if root.rating > data
         find(match.left, data)
      elsif root.rating < data
         find(match.right, data)
      else
         return match
      end
  end

  def delete(root, data)
  end

  # Recursive Breadth First Search
  def printf(children=nil)
  end

#for delete, you got to figure out how to shift things so the children of what is deleted isn't lost ("parent" must be replaced by another parent, must still follow left-right semantics). There is an algorhithm that can be implemented that satsifies the criteria.

#should find and delete based on rating. SO data ends up being rating (is rating bigger or smaller than root, and then progress from there)

end
