class Election
  attr_reader :year, :races, :vote_counts
  def initialize(year)
    @year = year
    @races = []
    @vote_counts = {}
  end

  def add_race(race)
    @races << race
  end

  def candidates
    all_candidates = @races.map do |race|
       race.candidates
    end.flatten
  end

  # def vote(candidate)         #got stuck here and decided to move on to I4 with the time I had left
  #   candidate.votes += 1
  #  @vote_counts[candidate.name]
  # end
end