class LinkedList
  attr_reader :head, :count

  def initialize
    @head = nil
    @node_count = 0
  end

  def append(sound)
    if @head == nil
       @head = Node.new(sound)
       # @count += 1
    else
    #  @head.next_node = Node.new(sound)
    #  # @count += 1
      current = @head
      until current.next_node == nil
        current = current.next_node
      end
      current.next_node = Node.new(sound)
    end
    sound
  end

  def count
    if @head.nil?
      node_count = 0
    else current_node = @head
      until current_node.next_node.nil?
        current_node = current_node.next_node
      end
      node_count +=1
    end
    node_count
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
