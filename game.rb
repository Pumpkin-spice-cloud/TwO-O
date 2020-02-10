require './players.rb'
require './questionGenertator.rb'


puts 'Welcome to the game'

p1 = Players.new("Player 1")
p2 = Players.new("Player 2")

def askQuestion (p1, p2, currentPlayer=p1)


q1 = GenerateQuestion.new

currentPlayer = currentPlayer


  puts "#{currentPlayer.name}. What is #{q1.number1} + #{q1.number2}"
  
  print "> "
  answer = $stdin.gets.chomp

  
  if "#{answer}" == "#{q1.answer}"
    puts "Grats"
  else
     currentPlayer.updateScore

    puts "You are dumb"
  end
      
  puts "Current Score: Player 1 #{p1.playerScore}/3 || Player 2 #{p2.playerScore}/3"
  
  if p1.playerScore < 3 && p2.playerScore < 3   
    
    if currentPlayer == p1 
    
      currentPlayer = p2
    
    else 
    
      currentPlayer = p1
    
    end 
    
    askQuestion(p1, p2, currentPlayer)
  end
     
  whoWon = p1.playerScore == 3 ?  'Player 1 Loses' :  'Player 2 Loses'

  puts whoWon

    
  end

  askQuestion(p1, p2)
  
  

