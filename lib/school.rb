# code here!
include 'pry'
class School

  attr_accessor :roster, :name

  def initialize(name)
    @name = name
    @roster = { }
  end

  def add_student(student, grade)
    if @roster[grade]
      @roster[grade] << student
    else
      @roster[grade] = [ ]
      @roster[grade] << student
    end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.map{|grade, student| @roster[grade] = students.sort}
    binding.pry
    @roster
  end
end
