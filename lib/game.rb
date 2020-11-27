class GameLogic

  def initialize(player1_input, player2_input)
    @player1_input = player1_input
    @player2_input = player2_input
  end

  def validate_input_position(player_input)
    #check if the position is valid or not.
    # perharps print availabe position
  end

  def check_winner(player, player_symbol)
    # check the board if there is the same symbol on the same row
    # check if they are on the same column or diagonal
    # return player name and true(to show which player wins)
    true
  end

end