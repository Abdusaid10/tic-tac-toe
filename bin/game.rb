require "../lib/board.rb"
require "../lib/player.rb"

class Game
   def initialize
       print "Enter name player1: "
       @p1 = Player.new gets.chomp,"x"
       print "Enter name player2: "
       @p2 = Player.new gets.chomp,"o"

       @grid = Grid.new
   end

   def start
       @active = [@p1,@p2].sample
       @moves = 0
       until game_over?
         @grid.render
         print "It's #{@active.name}'s turn: "
         until @grid.put_piece(gets.chomp.to_i - 1, @active.symb)
           print "[Error] Invalid move, please move again: "
         end
         switch_turn
         @moves += 1
	   end
	   
       @grid.render
       # Switch the turn to display the winning player
       
	   switch_turn
       if @grid.full? && !(@grid.finished?)
         puts "Game over"
         puts "It is Draw"
       else
         puts "Player #{@active.name}(#{@active.symb}) has won."
       end
       

   end

   def game_over?
       # Check the last move for victory condition
       @grid.finished? || @moves == 9
   end

   def switch_turn
       if(@active == @p1)
           @active = @p2
       else
           @active = @p1
       end
   end
end

# Entry point for the program -> Game
puts "Welcome to tic-tac-toe"
puts "Instructions: The boxes are numbered from 1 to 9"
puts "A player has to input a number between 1 to 9"
puts "Once input, it will display in its appropriate box with letters either X or O"
puts "May the best player win, GoodLuck!"
puts "  You enter the grid number you want to play your piece at."
Game.new.start