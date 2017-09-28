class LinkedList
  def append(data); end

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
    current_node = current_node.next_node while current_node.next_node
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
    current_node
  end

  def pop; end

  def contains?(value)
    current_node = @head
    while current_node
      return true if current_node.data == value
      current_node = current_node.next_node
    end
  end

  def find(data); end

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
