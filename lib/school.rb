
class School

  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    (self.roster[grade]) ? self.roster[grade].push(name) : self.roster[grade] = [name]
  end

  def grade(grade)
    self.roster[grade]
  end

  def sort
    self.roster.each { |key, value| value.sort! }
  end

end


