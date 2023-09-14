class Race
  attr_reader :office, :candidates, :open
  def initialize(office)
    @office = office
    @candidates = []
    @open = true
  end

  def register_candidate!(registrant_info)
    @name = registrant_info[:name]
    @party = registrant_info[:party]

    candidate = Candidate.new(registrant_info)
    @candidates << candidate
    candidate
  end

  def open?
    @open
  end

  def close!
    @open = false
  end
end