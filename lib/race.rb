class Race
  attr_reader :office, :candidates
  def initialize(office)
    @office = office
    @candidates = []
  end

  def register_candidate!(registrant_info)
    @name = registrant_info[:name]
    @party = registrant_info[:party]
    
    candidate = Candidate.new(registrant_info)
    @candidates << candidate
    candidate
  end
end