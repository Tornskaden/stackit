require 'queue'
describe Queue do
  before { @queue = Queue.new }

  describe "before pushing" do
    subject { @queue }
    it { should be_empty }
    it "should return nil when shifting" do
      subject.shift.should be_nil
    end
  end
  
  describe "when making changes to queue" do
    subject { @queue }
    it "should increment size by 1 when pushing" do
      lambda{
        @queue.push("Hello World!")
      }.should change(@queue, :size).by(1)
    end
    it "should decrement size by 1 when shifting" do
      @queue.push("Hello World!")
      lambda{
        @queue.shift
      }.should change(@queue, :size).by(-1)
    end
  end
  
  describe "after two pushes" do
    before { @queue.push("Hello, world").push("Hello, again") }
    subject { @queue }
    it { should_not be_empty }
    it { should have(2).items }
    it "should return correct item when shifted" do
      subject.shift.should == "Hello, world"
    end
  end
  
end