class CodeClan
  attr_accessor :student, :cohort 

  def initialize (student, cohort) 
    @student = student
    @cohort = cohort
  end

  def i_can_talk ()
    return "I can talk!"
  end
  
  def fave_language (my_fave )
    @fave = my_fave
  end

  def say_fave_language
    return "I love " + @fave
  end
end

