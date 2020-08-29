
class School

  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if self.roster[grade]
      self.roster[grade].push(name)
    else
      self.roster[grade] = [name]
    end
  end

  def grade(grade)
    self.roster[grade]
  end

  def sort
    self.roster.each { |key, value| value.sort! }
  end

end

# flatiron = School.new("Hyrum")
# flatiron.add_student("hyrum", 9)
# flatiron.add_student("mike", 9)
# flatiron.add_student("Adam", 9)
# # flatiron.add_student("hyrum", 10)
# # flatiron.add_student("mike", 10)
# # flatiron.add_student("Adam", 10)
# p flatiron.roster
# p flatiron.sort
