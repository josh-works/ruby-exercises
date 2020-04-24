class Direwolf
  attr_reader :name, :home, :size, :starks_to_protect
  def initialize(name, home = "Beyond the Wall", size = "Massive")
    @name              = name
    @home              = home
    @size              = size
    @starks_to_protect = []
  end
  
  def hunts_white_walkers?
    starks_to_protect.empty?
  end
  
  def leaves(stark)
    # i (josh) don't like this guard clause, but I didn't really understand the 
    # test that it makes pass, so... ¯\_(ツ)_/¯ 
    return stark unless @starks_to_protect.include?(stark)
    
    stark.remove_direwolf_protection
    @starks_to_protect.delete(stark)
  end
  
  def protects(stark)
    return false unless protectable(stark)
    
    @starks_to_protect << stark
    stark.make_safe
  end
  
  def protectable(stark)
    return false unless stark.location == home 
    return false if starks_to_protect.count >= 2
    
    true
  end
end

class Stark
  attr_reader :name, :location, :safe
  def initialize(name, location = "Winterfell")
    @name        = name
    @location    = location
    @safe        = false
  end
  
  def remove_direwolf_protection
    @safe = false
  end
  
  def safe?
    safe
  end
  
  def make_safe
    @safe = true
  end
  
  def house_words
    return "Winter is Coming" if !safe
    return "The North Remembers" if safe
  end
end



