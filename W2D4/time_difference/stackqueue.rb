class MyQueue
  def initialize
    @store = []
  end

  def enqueue(val)
    @store << val
  end

  def dequeue
    @store.shift
  end
  def peek
    @store[0]
  end

  def size
    @store.size
  end

  def empty?
    @store.empty?
  end
end

class StackQueue
  def initialize
    @store = MyStack.new()
  end

  def enqueue(val)
  
  end

  def dequeue

  end

  def size

  end

  def empty?

  end
end

class MyStack
  def initialize
    @store = []
  end

  def push(val)
    @store << val
  end

  def pop
    @store.pop
  end

  def peek
    @store[-1]
  end

  def size
    @store.size
  end

  def empty?
    @store.empty?
  end
end
