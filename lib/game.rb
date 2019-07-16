class Game
  def initialize(player1, player2, board)

  end
  def menu
    puts "---------------------------------"
    puts "** Welcome to Tic Tac Toe game **"

    puts "Start"
    puts "Restart"
    puts "About"
    puts "Credits"
    puts "Exit"
  
    puts "Enter your choice"

    choice = gets.chomp
    case choice 
    when "Start"
      #play
      startGame
    when "Restart"
      # 
      restartGame
    when "About"
      aboutGame
    when "Credits"
      credits
    when "Exit"
      endGame
    
    else
      puts "Error! No such option"
    end

  end

  def startGame

  end

  def restartGame

  end

  def endGame

  end

  def aboutGame

  end

  def credits
  end

end