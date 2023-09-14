require './lib/candidate'

RSpec.describe Candidate do
  
  describe '#initialize' do
    it 'can initialize' do
      diana = Candidate.new({name: "Diana D", party: :democrat})
      expect(diana).to be_a Candidate
    end
  end

  describe '#vote_for!' do
    it 'can vote for a contestant' do
      diana = Candidate.new({name: "Diana D", party: :democrat})
      expect(diana.votes).to eq(0)
      diana.vote_for!
      diana.vote_for!
      diana.vote_for!
      expect(diana.votes).to eq(3)
    end
  end
end