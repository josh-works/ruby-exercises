class Werewolf
  attr_reader :name, :location, :human, :hungry
  def initialize(name, location = "London")
    @name = name
    @location = location
    @human = true
    @hungry = false
  end
  
  def human?
    human
  end
  
  def change!
    @human = !human
    @hungry = true
  end
  
  def wolf?
    !human
  end
  
  def hungry?
    hungry
  end
  
  def consume(victim)
    return false if human?
    @hungry = false
    victim.status = :dead
    return true
  end
end