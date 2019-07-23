require_relative "../lib/game.rb"
require_relative "../lib/player.rb"

puts "Welcome to tic-tac-toe"
puts "Instructions: The boxes are numbered from 1 to 9"
puts "A player has to input a number between 1 to 9"
puts "Once input, it will display in its appropriate box with letters either X or O"
puts "May the best player win, GoodLuck!"
puts "  You enter the grid number you want to play your piece at."
print "\n\n"

print "Enter name player1: "
p1 = gets.chomp,"x"
print "Enter name player2: "
p2 = gets.chomp,"o"

@p1 = Player.new(name: p1, symb: "x")
@p2 = Player.new(name: p2, symb: "o")
players=[@p1, @p2]

@game = Game.new(players).play



