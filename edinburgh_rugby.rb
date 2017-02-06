class EdinburghRugby

  attr_accessor :team_name, :players, :coach, :points

  def initialize (team_name, players , coach, points)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = points
  end

    def add_player(player)
    @players.push player
# add the player to @players
    end


  def are_you_there(name)

  for x in @players
    return true if x == name
     
  end
  return false
end

def points_for_win (points)
 if points == "loss" then return "you lost" end
 if points == "win" then (@points += 1)
 
 end
  end
 

end

