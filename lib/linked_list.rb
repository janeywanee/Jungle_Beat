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
    @head.data
  end

end
