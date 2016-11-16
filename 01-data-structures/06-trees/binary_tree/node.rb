class Node
  attr_accessor :title
  attr_accessor :rating
  attr_accessor :left
  attr_accessor :right

  def initialize(title, rating)
      self.title = title
      self.rating = rating
      @left = nil
      @right = nil
  end
end
