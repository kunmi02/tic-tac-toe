# rubocop:disable Metrics/AbcSize, Metrics/MethodLength, Metrics/CyclomaticComplexity
# game logic
class GameLogic
  def initialize
    @board = [['', '', ''], ['', '', ''], ['', '', '']]
  end

  def validate_input_position(input)
    case input
    when 1
      @board[0][0].empty?
    when 2
      @board[0][1].empty?
    when 3
      @board[0][2].empty?
    when 4
      @board[1][0].empty?
    when 5
      @board[1][1].empty?
    when 6
      @board[1][2].empty?
    when 7
      @board[2][0].empty?
    when 8
      @board[2][1].empty?
    else
      @board[2][2].empty?
    end
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

  def check_winner
    combinations = [
      [@board[0][0], @board[0][1], @board[0][2]],
      [@board[1][0], @board[1][1], @board[1][2]],
      [@board[2][0], @board[2][1], @board[2][2]],
      [@board[0][0], @board[1][1], @board[2][2]],
      [@board[2][0], @board[1][1], @board[0][2]],
      [@board[0][0], @board[1][0], @board[2][0]],
      [@board[0][1], @board[1][1], @board[2][1]],
      [@board[0][2], @board[1][2], @board[2][2]]

    ]
    combinations.any? do |combo|
      combo.all? { |i| i == 'x' } || combo.all? { |i| i == 'o' }
      # return true if combo.all? || combo.all?
    end
  end
end

# rubocop:enable Metrics/AbcSize, Metrics/MethodLength, Metrics/CyclomaticComplexity
