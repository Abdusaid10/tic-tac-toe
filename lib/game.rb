require_relative "../lib/grid.rb"
require_relative "../lib/player.rb"
class Game
  attr_reader :players, :grid, :current_player, :next_player, :symb

  def initialize(players, grid=Grid.new)
    @players =players
    @grid = grid
    @current_player, @next_player = players.shuffle
    @symb = symb
  end

  def switch_turn
    @current_player, @next_player = @next_player, @current_player
  end

  def ask_move
    "#{current_player.name}'s turn, Enter number between 1 and 9: "
  end

  def get_move(move)
    return @grid.put_piece(move.to_i-1, current_player.symb)
  end
  
  def game_over?
    # Check the last move for victory condition
    if @grid.finished?
      return "#{current_player.name} won" 
    elsif @grid.full? && !(@grid.finished?)
      return "It is a Draw" 
    end
    false
  end
 
  def play
    until game_over?
      @grid.render
      print ask_move
      until get_move(gets.chomp)
        print "[Error] Invalid move, please move again: "
      end
      if game_over?
        puts game_over?
      end
      switch_turn
    end
    @grid.render
    switch_turn
  end
end

