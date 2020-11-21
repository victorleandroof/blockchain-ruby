# frozen_string_literal: true

require 'minitest/autorun'
require 'minitest/benchmark'
require_relative '../../src/blockchain'

class BenchBlockchain < Minitest::Benchmark
  def bench_blockchain
    assert_performance_constant 0.9999 do |n|
      @blockchain = Blockchain.new
      @blockchain.init_block
      @blockchain.add_message n
    end
  end
end
