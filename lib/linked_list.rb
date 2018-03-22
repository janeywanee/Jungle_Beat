class LinkedList
  attr_reader :head, :count

  def initialize
    @head = nil
    @node_count = 0
  end

  def append(sound)
    if @head == nil
       @head = Node.new(sound)
    else
        current_node = @head
      until current_node.next_node == nil
        current_node = current_node.next_node
      end
      current_node.next_node = Node.new(sound)
    end
  end

  def prepend(sounds)
    if @head == nil
       @head = Node.new(sounds)
    else
       new_node = Node.new(sounds)
       new_node.next_node = @head
       @head = new_node
     end
  end

  def insert(sounds
    if @head == nil
      @head = Node.new(sounds)
    while(p! = insert.position)
      

    end
  end
  end

  def count
    if @head.nil?
      @node_count = 0
    else current_node = @head
      @node_count += 1
      until current_node.next_node.nil?
        current_node = current_node.next_node
        @node_count +=1
      end
    end
    @node_count
  end

  def to_string
    current_node = @head
    string = ""
    string << current_node.data
    until current_node.next_node == nil
      current_node = current_node.next_node
      string << " #{current_node.data}"
    end
    string
  end

end
