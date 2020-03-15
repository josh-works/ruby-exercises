class LeatherChair
  attr_reader :exposed
  def initialize
    @exposed = false
  end
  
  def faded?
    exposed
  end
  
  def expose_to_sunlight
    @exposed = true
  end
end