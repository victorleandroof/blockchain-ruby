# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../src/blockchain'

class BlockchainTest < MiniTest::Test
  def test_add_block
    blockchain = Blockchain.new
    blockchain.init_block
    Proof.stub :generate_proof, '1' do
      blockchain.add_message 'teste'
      blocks = blockchain.blocks
      assert_equal blocks.length, 2
      assert_equal blocks[1].hash_value, 'c477f272628392324b04aee5b93d846762dafaccb1c5fd6db33414d6e87a8513'
    end
  end
end
