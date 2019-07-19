def getNames
  print "Enter name player1: "
  @p1 = Player.new gets.chomp,"x"
  print "Enter name player2: "
  @p2 = Player.new gets.chomp,"o"
end
# Entry point for the program -> Game
puts "Welcome to tic-tac-toe"
puts "Instructions: The boxes are numbered from 1 to 9"
puts "A player has to input a number between 1 to 9"
puts "Once input, it will display in its appropriate box with letters either X or O"
puts "May the best player win, GoodLuck!"
puts "  You enter the grid number you want to play your piece at."
Game.new.getNames
Game.new.start