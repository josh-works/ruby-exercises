class Tire
  attr_reader :flat
  def initialize
    @flat = false
  end
  
  def flat?
    flat
  end
  
  def blow_out
    @flat = true
  end
end