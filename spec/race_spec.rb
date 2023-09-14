require './lib/candidate'
require './lib/race'

RSpec.describe Race do

  describe '#initialize' do
    it 'can initialize' do
      race = Race.new("Texas Governor")
      expect(race).to be_a(Race)
    end
  end

  describe '#register_candidate!' do
    it 'can register a candidate' do
      race = Race.new("Texas Governor")
      candidate1 = race.register_candidate!({name: "Diana D", party: :democrat})
      candidate2 = race.register_candidate!({name: "Roberto R", party: :republican})
      expect(candidate1.class).to eq(Candidate)
      expect(candidate1.name).to eq("Diana D")
      expect(candidate1.party).to eq(:democrat)
      expect(race.candidates).to eq([candidate1, candidate2])
    end
  end
end
  