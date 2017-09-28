class LinkedList
  def initialize
    @head = nil
  end

  def append(data)
    return @head = Node.new(data) if @head.data.nil?
    current_node = @head
    next_node = current_node.next_node
    while next_node
      current_node = next_node
      next_node = current_node.next_node
    end
    current_node.next_node = Node.new(data)
  end

  def prepend(data) # fix variable names
    node = Node.new(data)
    node.next_node = @head
    @head = node
  end

  def size
    current_node = @head
    count = 1
    while current_node.next_node
      count += 1
      current_node = current_node.next_node
    end
    count
  end

  def tail
    current_node = @head
    current_node = current_node.next_node until current_node.next_node.nil?
    current_node.data
  end

  def head
    @head.data
  end

  def at(index)
    current_node = @head
    index.times do
      return nil if current_node.nil?
      current_node = current_node.next_node
    end
    current_node.data
  end

  def pop
    current_node = @head
    next_node = current_node.next_node
    previous_node = nil
    while next_node
      previous_node = current_node
      current_node = next_node
      next_node = next_node.next_node
    end
    if previous_node.nil?
      data = current_node.data
      current_node.data = nil
      data
    else
      previous_node.next_node = nil
      current_node.data
    end
  end

  def contains?(value)
    current_node = @head
    while current_node
      return true if current_node.data == value
      current_node = current_node.next_node
    end
  end

  def find(data)
    current_node = @head
    index = 0
    while current_node
      return index if current_node.data == data
      current_node = current_node.next_node
      index += 1
    end
    nil
  end

  def to_s
    string = ''
    current_node = @head
    while current_node
      string += "( #{current_node.data} ) -> "
      current_node = current_node.next_node
    end
    string + 'nil'
  end

  def insert_at(index); end # extra credit

  def remove_at(index); end # extra credit

  class Node
    attr_accessor :data, :next_node
    def initialize(data = nil)
      @data = data
      @next_node = nil
    end
  end
end
