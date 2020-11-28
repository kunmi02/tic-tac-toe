class GameLogic

  def initialize
    @board = [[' ', ' ', ' '], [' ', ' ', ' '], [' ', ' ', ' ']]
  end

  def validate_input_position(input)
    #check if the position is valid or not.
    # perharps print availabe position
    case input
    when 1
      @board[0][0].nil?
    when 2
      @board[0][1].nil?
    when 3
      @board[0][2].nil?
    when 4
      @board[1][0].nil?
    when 5
      @board[1][1].nil?
    when 6
      @board[1][2].nil?
    when 7
      @board[2][0].nil?
    when 8
      @board[2][1].nil?
    else
      @board[2][2].nil?
    end
      # @board
  end

  def insert_user_option_to_board(input, player_sign)

  case input
  when 1
    @board[0][0] = player_sign
  when 2
    @board[0][1] = player_sign
  when 3
    @board[0][2] = player_sign
  when 4
    @board[1][0] = player_sign
  when 5
    @board[1][1] = player_sign
  when 6
    @board[1][2] = player_sign
  when 7
    @board[2][0] = player_sign
  when 8
    @board[2][1] = player_sign
  else
    @board[2][2] = player_sign
  end
    @board
  end

  def check_winner(player, player_symbol)
    # check the board if there is the same symbol on the same row
    # check if they are on the same column or diagonal
    # return player name and true(to show which player wins)
    combinations = [
      [@board[0][0], @board[0][1], @board[0][2]],
      [@board[1][0], @board[1][1], @board[1][2]],
      [@board[2][0], @board[2][1], @board[2][2]],
      [@board[0][0], @board[1][1], @board[2][2]],
      [@board[2][0], @board[1][1], @board[0][2]],
      [@board[0][0], @board[1][0], @board[2][0]],
      [@board[0][1], @board[1][1], @board[2][1]],
      [@board[0][2], @board[1][2], @board[2][2]],
      
    ]
    combinations.any? do |combo|
      if combo.all?('x') 
        return true
      end
    end
  end

end