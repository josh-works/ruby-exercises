class Ogre
  attr_reader :name, :home, :swings, :encounter_counter
  def initialize(name, home = "Swamp")
    @name = name
    @home = home
    @swings = 0
    @encounter_counter = 0
  end
  
  def encounter(human)
    @encounter_counter += 1
    human.increment_encounters
    if human.notices_ogre?
      swing_at(human)
    end
  end
  
  def swing_at(human)
    @swings += 1
    human.knock_unconscious if swings % 2 == 0
  end
  
  def apologize(human) 
    human.revive
    @swings = 0
  end
end

class Human
  attr_reader :name, :encounter_counter, :knocked_out
  def initialize(name = "Jane")
    @name = name
    @encounter_counter = 0
    @knocked_out = false
  end
  
  def increment_encounters
    @encounter_counter += 1
  end
  
  def revive
    @encounter_counter = 0
    @knocked_out = false
  end
  
  def knock_unconscious
    @knocked_out = true
  end
  
  def notices_ogre?
    encounter_counter % 3 == 0
  end
  
  def knocked_out?
    knocked_out
  end
end