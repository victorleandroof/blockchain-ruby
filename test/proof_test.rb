# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../src/proof'

class ProofTest < MiniTest::Test
  def test_proof_valid
    assert_equal Proof.proof_valid(1, 1), true
  end

  def test_generate_proof
    Proof.stub :rand, 1 do
      assert_equal Proof.generate_proof(1), 1_000_000_01
    end
  end
end
