class Centaur
  attr_reader :name, :breed, :cranky, :standing, :activities_counter
  def initialize(name, breed)
    @name = name
    @breed = breed
    @cranky = false
    @standing = true
    @activities_counter = 0
  end
  
  def cranky?
    cranky
  end
  
  def standing?
    standing
  end
  
  def shoot
    return "NO!" if cranky || laying?
    @activities_counter += 1
    @cranky = true if activities_counter >= 3
    "Twang!!!"
  end
  
  def run
    return "NO!" if cranky?
    @activities_counter +=1 
    "Clop clop clop clop!!!"  
  end
  
  def sleep
    return "NO!" if standing?
    @activities_counter = 0
    @cranky = false
  end
  
  def laying?
    # !something is "the opposite of something". 
    # if `standing` returns true, then `!standing` will return false. 
    !standing
  end
  
  def lay_down
    @standing = false
  end
  
  def stand_up 
    @standing = true
  end
end