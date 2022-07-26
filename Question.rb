class Question
  
  attr_accessor :player

  def initialize(player)
    @num1 = [*1...20].sample
    @num2 = [*1...20].sample
    @answer = @num1 + @num2
   
    @player = player
  end

  def ask
    puts "#{@player.name}: What does #{@num1} plus #{@num2} equal?"
    print "> "
  end

  def mark(givenAnswer)
    if @answer == givenAnswer
      puts "#{@player.name}: YESS! You are correct"
    else
      @player.lose
      puts "#{@player.name}: Seriously? No! Answer is #{@answer}"
    end
  end



end