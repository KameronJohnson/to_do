require('rspec')
require('task')

describe(Task) do
  before() do
    Task.clear() #this clears the tasks before each spec is run.
  end

  describe("#description") do
    it("let's you give a description of a task to do") do
      test_task = Task.new("scrub the zebra")
      expect(test_task.description()).to(eq("scrub the zebra"))
    end
  end

  describe(".all") do #class methods get called on Task itself
    it("is empty at first") do
      expect(Task.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("adds a task to the array of saved tasks") do
      test_task = Task.new("wash the lion")
      test_task.save()
      expect(Task.all()).to(eq([test_task])) #test_task pushed into array
    end
  end

  describe(".clear") do #made so line 14 passes and clears out array
    it("empties out all of the saved tasks") do
      Task.new("wash the lion").save()
      Task.clear()
      expect(Task.all()).to(eq([]))
    end
  end
end
