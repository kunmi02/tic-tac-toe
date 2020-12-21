# frozen_string_literal: true

require_relative '../lib/game'

describe GameLogic do
  describe '#validate_input_postion' do
    gamelogic = GameLogic.new

    it 'insert user option into the board position 1' do
      expect(gamelogic.insert_user_option_to_board(1, 'x')).to eql([['x', '', ''], ['', '', ''], ['', '', '']])
    end

    it 'cant insert into position 1 again' do
      expect(gamelogic.validate_input_position(1)).to eql(false)
    end

    it 'insert user option into the board position 2' do
      expect(gamelogic.insert_user_option_to_board(2, 'x')).to eql([['x', 'x', ''], ['', '', ''], ['', '', '']])
    end

    it 'insert user option into the board position 3' do
      expect(gamelogic.insert_user_option_to_board(3, 'x')).to eql([%w[x x x], ['', '', ''], ['', '', '']])
    end
    it 'check winner' do
      expect(gamelogic.check_winner).to eql(true)
    end
  end
end
