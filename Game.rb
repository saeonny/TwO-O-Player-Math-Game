class Game
  
  def initialize
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    @currentPlayer = @player1
  end

  def onGoing
    @player1.alive && @player2.alive
  end

  def gameResult
    if self.onGoing
      puts "P1: #{@player1.mark}  vs  P2: #{@player2.mark}"
      puts"\n-------NEW TURN--------"
      @currentPlayer = @currentPlayer == @player1 ? @player2 : @player1
    else
      winner = @player1.alive ? player1 : @player2
      puts "\n\n---------WINNER----------------"

      puts "#{winner.name} wins a score of #{winner.mark}"
      puts "\n------------------------------"
      puts"\n-------GAME OVER--------"
      puts"Godd Bye!"
      exit(0)
    end
    
  end

  
  def start
    while self.onGoing
      question = Question.new(@currentPlayer)
      question.ask
      answer = gets.chomp
      question.mark(answer)
      self.gameResult  
    end

  end

  

end