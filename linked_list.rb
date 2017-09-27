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
    attr_accessor :data, :next_node
    def initialize(data = nil)
      @data = data
      @next_node = nil
    end
  end
end

l = LinkedList.new('initial')
test = ['test', 2, 44, 0, 'word', 3]

test.each do |i|
  l.preppend(i)
end
