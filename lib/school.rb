# code here!
require 'pry'
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
        binding.pry
    @roster.map{|grade, student| @roster[grade] = students.sort}

    @roster
  end
end
