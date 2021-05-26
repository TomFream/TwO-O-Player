require './player'
require './question'
require './game'

P1 = Player.new("Player 1")
P2 = Player.new("Player 2")
current_player = P1 

while !Game.over
  round = Game.new(current_player)

  if current_player == P1
    current_player = P2
  else
    current_player = P1
  end
end