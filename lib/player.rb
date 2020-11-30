# player
class Player
  attr_reader :player_name, :symbol

  def initialize(player_name, symbol)
    @player_name = player_name
    @symbol = symbol
  end
end
