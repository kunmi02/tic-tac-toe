# frozen_string_literal: true

require_relative '../lib/player'

describe Player do
  # describe '#validate_input_postion' do
  player = Player.new('Ade', 'x')
  describe '#Player' do
    it 'Creates Player Ade with symbol x' do
      expect(player.player_name).to eql('Ade')
    end

    it 'Creates Player Ade with symbol x' do
      expect(player.symbol).to eql('x')
    end
  end
end
