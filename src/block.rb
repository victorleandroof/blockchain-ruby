# frozen_string_literal: true

require 'digest'

# block
class Block
  def initialize(index, block_hash, proof, message)
    @index = index
    @block_hash = block_hash
    @proof = proof
    @message = message
  end

  def hash_value
    block_string = "#{@index}-#{@proof}-#{@message}"
    Digest::SHA256.hexdigest block_string
  end

  attr_reader :proof, :block_hash, :index
end
