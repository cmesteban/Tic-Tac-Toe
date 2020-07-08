require_relative './player.rb'
require_relative './board.rb'

class Game
  WIN_CONDITIONS = [[1,2,3],[4,5,6],[7,8,9],[1,4,7],[2,5,8],[3,6,9],[1,5,9],[3,5,7]]

  def initialize(name1, name2)
    @player_1 = Player.new('X', name1)
    @player_2 = Player.new('O', name2)
    @board = Board.new
  end

  def start_game
    for i in 0..8
      ##determines which player is currently marking a location
      i%2 == 0 ? current_player = @player_1 : current_player = @player_2
      puts "---------------------------------------------------------------"
      puts "Current Player: #{current_player.name} #{current_player.marker}"
      @board.show
      location = current_player.mark
      marker = current_player.marker
      @board.update(location, marker)
      
      if end?(current_player)
        puts "Congratulations! #{current_player.name} wins!"
        break
      end
    end
  end

  def end?(player)
    WIN_CONDITIONS.any? { |win_condition|
      (win_condition - player.playerSelections) == []
    }
  end
end
  game1 = Game.new("Carlos","Javier")
  game1.start_game