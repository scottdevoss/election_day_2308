require './lib/candidate'
require './lib/race'
require './lib/election'

RSpec.describe Election do

  describe '#initialize' do
    it 'can initialize' do
      election = Election.new("2023")
      expect(election).to be_a(Election)
    end
  end

  describe '#add_race' do
    it 'can list the different races' do
      election = Election.new("2023")
      race = Race.new("Texas Governor")
      race2 = Race.new("City Manager")
      election.add_race(race)
      expect(election.races).to eq([race])
      election.add_race(race2)
      expect(election.races).to eq([race, race2])
    end
  end

  describe '#candidates' do
    it 'can list all the candidates in the election' do
      election = Election.new("2023")
      race = Race.new("Texas Governor")
      race2 = Race.new("City Manager")
      election.add_race(race)
      election.add_race(race2)
      candidate1 = race.register_candidate!({name: "Diana D", party: :democrat})
      candidate2 = race.register_candidate!({name: "Roberto R", party: :republican})
      candidate3 = race2.register_candidate!({name: "Billy", party: :democrat})
      candidate4 = race2.register_candidate!({name: "Steve", party: :republican})
      expect(election.candidates).to eq([candidate1, candidate2, candidate3, candidate4])
    end
  end

  describe '#vote(candidate)' do
    xit 'can list out the vote count per candidate' do
      election = Election.new("2023")
      race = Race.new("Texas Governor")
      election.add_race(race)
      diana = Candidate.new({name: "Diana D", party: :democrat})
      diana.vote_for!
      diana.vote_for!
      diana.vote_for!
      candidate1 = race.register_candidate!({name: "Diana D", party: :democrat})
      candidate2 = race.register_candidate!({name: "Roberto R", party: :republican})
      election.vote(candidate1)
      expect(election.vote_counts).to eq({:diana=>3})
    end
  end
end