require_relative "../lib/grid.rb"
require_relative "../lib/player.rb"

class Game
  def initialize
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

