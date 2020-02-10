class Players
  attr_accessor :playerScore, :name

  def initialize(name)
    @name = name
    @playerScore = 0
  end

  def updateScore
    @playerScore += 1
  end

end




