require 'stack'
describe Stack do
  before { @stack = Stack.new }
#  before { @stack = Array.new }

  describe "before pushing" do
    subject { @stack }
    it { should be_empty }
    it "should return nil when popping" do
      subject.pop.should be_nil
    end
  end
  
  describe "after one push" do
    before { @stack.push("Hello, world") }
    subject { @stack }
    it { should have(1).items }
    it "should return item when popped" do
      subject.pop.should == "Hello, world"
    end
  end
  
  it "should increment size by 1 when pushing" do
    lambda{
      @stack.push("Hello World!")
    }.should change(@stack, :size).by(1)
  end

  it "should decrement size by 1 when popping" do
    @stack.push("Office")
    lambda{
      @stack.pop
    }.should change(@stack, :size).by(-1)
  end
end