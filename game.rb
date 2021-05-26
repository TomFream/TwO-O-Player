class Game
  @@over = false

  def initialize(player)
    round = Question.new(player)
    self.status
  end

  def status
    if P1.lives == 0
      self.game_over(P2)
    elsif P2.lives == 0
      self.game_over(P1)
    else
      puts "P1: #{P1.lives}/3 vs P2: #{P2.lives}/3"
    end
  end

  def game_over(player)
    puts "#{player.name} wins with a score of #{player.lives}/3"
    puts "----- GAME OVER -----"
    puts "Good Bye!"
    @@over = true
  end

  def self.over
    @@over
  end

end
