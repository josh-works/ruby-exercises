class Ogre
  attr_reader :name, :home, :swings, :encounter_counter
  def initialize(name, home = "Swamp")
    @name = name
    @home = home
    @swings = 0
    @encounter_counter = 0
  end
  
  def encounter(human)
    human.encounter_ogre
    @encounter_counter += 1
    swing_at(human) if human.notices_ogre?
  end
  
  def swing_at(human)
    @swings += 1
    human.knock_unconscious if swings % 2 == 0
  end
  
  def apologize(human)
    human.revive
  end
end


class Human
  attr_reader :name, :encounter_counter, :knocked_out
  def initialize(name = 'Jane')
    @name = name
    @encounter_counter = 0
    @knocked_out = false
  end
  
  def revive
    @knocked_out = false
    @encounter_counter = 0
  end
  
  def encounter_ogre
    @encounter_counter += 1
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
