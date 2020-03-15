class Centaur
  attr_reader :name, :breed, :standing, :activities_counter
  def initialize(name, breed)
    @name = name
    @breed = breed
    @standing = true
    @activities_counter = 0
  end
  
  def cranky?
    activities_counter >= 3
  end
  def standing?
    standing
  end
  
  def fit_for_activity?
    !cranky? && !laying?
  end
  
  def shoot
    return "NO!" unless fit_for_activity?
    @activities_counter += 1
    @cranky = true if activities_counter >= 3
    "Twang!!!"
  end
  
  def run
    return "NO!" unless fit_for_activity?
    @activities_counter +=1 
    "Clop clop clop clop!!!"  
  end
  
  def sleep
    return "NO!" if standing?
    @activities_counter = 0
  end
  
  def laying?
    !standing
  end
  
  def lay_down
    @standing = false
  end
  
  def stand_up 
    @standing = true
  end
  
  def drink_potion
    return false if laying?
    @activities_counter = 0
  end
end