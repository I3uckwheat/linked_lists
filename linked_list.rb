class LinkedList
  def initialize(data)
    @head = Node.new(data)
  end

  def append(data); end

  def prepend(data)
    n = Node.new(data)
    n.node = @head
    @head = n
  end

  def size
    # iterate through the nodes and count amount of iterations
  end

  def tail
    current_node = @head
    current_node = current_node.next_node while current_node.next_node
    current_node
  end

  def head
    @head.data
  end

  def at(index); end

  def pop; end

  def contains?(value)
    current_node = @head
    while current_node
      return true if current_node.data == value
      current_node = current_node.next_node
    end
  end

  def find(data); end

  def to_s; end

  def insert_at(index); end # extra credit

  def remove_at(index); end # extra credit

  class Node
    attr_accessor :data, :node
    def initialize(data = nil)
      @data = data
      @next_node = nil
    end
  end
end
