require("minitest/autorun")
require_relative("./edinburgh_rugby")

class TestEdinburghRugby < MiniTest::Test

  def setup
    @players = ["Chris","Greg"]
    @points = 0 
  end

  def test_team_name
    team = EdinburghRugby.new("Gunners", @players,"Jake", @points)
    assert_equal("Gunners",team.team_name)
  end

  def test_players
    team = EdinburghRugby.new("Gunners", @players, "Jake", @points)
    assert_equal(@players,team.players)
  end

  def test_coach
    team = EdinburghRugby.new("Gunners", @players, "Jake", @points)
    assert_equal("Jake",team.coach)

  end
  def test_change_the_coach
    team = EdinburghRugby.new("Gunners",@players,"Jake", @points)
    team.coach = ("Henry")
    assert_equal("Henry",team.coach)
   end 

  def test_add_player
    team =EdinburghRugby.new("Gunners", @players, "Jake", @points)
    team.add_player("Matt")
    assert_equal(["Chris","Greg","Matt"], team.players)
  end


  def test_are_you_there
    team =EdinburghRugby.new("Gunners", @players, "Jake", @points)
    assert_equal(true, team.are_you_there("Greg"))
  end

  def test_points_for_wins_and_losses
    team =EdinburghRugby.new("Gunners", @players, "Jake", @points)
  team.points_for_win("win") 
  assert_equal(1, team.points)

    end
end 
