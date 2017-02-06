require("minitest/autorun")
require_relative("./classes_lab")

class TestCodeClan < MiniTest::Test

def test_student_name
talk = CodeClan.new("Jake", 9)
assert_equal("Jake",talk.student)
end

def test_cohort_number
talk = CodeClan.new("Jake", 9)
assert_equal(9,talk.cohort)

end

def test_change_cohort
  talk = CodeClan.new("Jake", 9)
  talk.cohort = (10)
  assert_equal(10, talk.cohort) 
 
end

  def test_change_name
    talk = CodeClan.new("Jake", 9)
    talk.student = ("Jackie")
    assert_equal("Jackie", talk.student) 
 
  end

  def test_i_can_talk
    student = CodeClan.new("Sam", 10)
    assert_equal("I can talk!", student.i_can_talk )
  end

  def test_fave_language
    student = CodeClan.new("James", 9)

    student.fave_language("ruby")
  

    assert_equal("I love ruby", student.say_fave_language)

  end

end





# def say_love(what_i_love)
#   return "ilove #{what_i_love}"
# end