# frozen_string_literal: true

require 'digest'

# proof
class Proof
  def self.generate_proof(previous_proof)
    next_proof = rand * 100_000_001
    if Proof.proof_valid previous_proof, next_proof
      next_proof
    else
      generate_proof previous_proof
    end
  end

  def self.proof_valid(previous_proof, next_proof)
    diff = next_proof - previous_proof
    proof_string = "difference#{diff}"
    hash_string = Digest::SHA256.hexdigest proof_string
    hash_string.include? '0'
  end
end
