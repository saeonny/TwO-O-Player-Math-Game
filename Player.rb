class Player
  attr_accessor :score, :name

  def initialize(name)
    @name = name
    @score = 3
    
  end

  def lose
    @score -= 1
  end

  def alive
    @score > 0
  end

  def mark
    "#{@score}/3"
  end

 
end