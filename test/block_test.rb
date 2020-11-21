# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../src/block'

class BlockTest < MiniTest::Test
  def test_hash_value
    block = Block.new 0, 'previous_block', 'previous_proof', 'message'
    assert_equal block.hash_value, '6e58756d116e76e8dcd2cfbb5c26bde0b48ae86601e7a9bd092ed5b440b79a5c'
  end
end
