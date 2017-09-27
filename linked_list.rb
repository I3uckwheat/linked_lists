class LinkedList
  def initialize; end

  def append; end

  def size; end

  def head; end

  def tail; end

  def at(index); end

  def pop; end

  def contains?; end

  def find(data); end

  def to_s; end

  def insert_at(index); end

  def remove_at(index); end

  class Node
    def initialize
      @value = nil
      @next_node = nil
    end

    def value; end

    def next_node; end
  end
end
