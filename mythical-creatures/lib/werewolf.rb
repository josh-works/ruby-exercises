class Werewolf
  attr_reader :name, :location, :human, :hungry
  def initialize(name, location = "London")
    @name = name
    @location = location
    @human = true
    @hungry = false
  end
  
  def consume(victim)
    return false if human?
    @hungry = false
    kill_victim(victim)
    true
  end
  
  def kill_victim(victim)
    victim.status = :dead
  end
  
  def hungry?
    hungry
  end
  
  def human?
    human
  end
  
  def wolf?
    !human
  end
  
  def change!
    @human = !human
    @hungry = true
  end
end