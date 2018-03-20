class LinkedList
  attr_reader :head, :count

  def initialize
    @head = nil
    @count = 0
  end

  def append(sound)
    if @head == nil
       @head = Node.new(sound)
       @count += 1
   else
     @head.next_node = Node.new(sound)
     @count += 1
    end
  end

  def to_string
    current = @head
    string = ""
    string << current.data
    until current.next_node == nil
      current = current.next_node
      string << " #{current.data}"
    end
    string
  end

end
