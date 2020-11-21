# frozen_string_literal: true

require_relative 'block'
require_relative 'proof'

# blockchain
class Blockchain
  def initialize
    @blocks = []
  end

  def init_block
    if @blocks.length.zero?
      puts 'Generate the first block'
      block = Block.new 0, 1, 0, '0'
      @blocks.push block
    else
      puts 'Block already initialized'
    end
  end

  def add_message(message)
    last_block = @blocks[-1]
    if last_block
      puts 'Starting minig block'
      proof = Proof.generate_proof last_block.proof
      if proof
        add_block last_block, proof, message
      else
        puts 'Not mining'
      end
    end
  end

  def add_block(last_block, proof, message)
    index = last_block.index + 1
    block = Block.new index, last_block.block_hash, proof, message
    @blocks.push block
    puts 'Completed mining'
  end

  attr_reader :blocks
end
