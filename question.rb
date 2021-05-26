class Question 
  attr_accessor :question, :solution, :player

  def initialize(player)
    var1 = rand(1..20)
    var2 = rand(1..20)

    @question = "#{player.name}: What does #{var1} plus #{var2} equal?"
    @solution = var1 + var2
    @player = player
    self.ask_question
  end

  def ask_question 
    puts "----- NEW TURN -----"
    puts question
    answer = gets.chomp.to_i
    self.verify(answer)
  end

  def verify(answer)

    if self.solution == answer
      puts "#{player.name}: Yes! You are correct"
    end

    if self.solution != answer
      player.lose_life
      puts "#{player.name}: Seriously? No!"
    end
    
  end

end