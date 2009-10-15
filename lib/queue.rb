class Queue
  def initialize
    @queue = []
  end
  
  def empty?
    @queue.empty?
  end
  
  def size
    @queue.size
  end
  
  def push(myPush)
    @queue.push(myPush)
  end

  def shift
    @queue.shift
  end
end