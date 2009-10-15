class Stack
  def initialize
    @stack = []
  end
  
  def empty?
    @stack.empty?
  end
  
  def size
    @stack.size
  end
  alias_method :length, :size
  
  def push(myPush)
    @stack.push(myPush)
  end

  def pop
    @stack.pop
  end
end