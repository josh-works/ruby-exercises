class Beers
  attr_reader :inventory
  def initialize
    @inventory = 99
  end
  
  def take_one_down_and_pass_it_around
    @inventory -= 1
  end
  
  def restock
    @inventory = 99
  end
end