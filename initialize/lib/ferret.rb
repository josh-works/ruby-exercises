class Ferret
  def initialize(name = "")
    @name = name
  end
  
  def name
    return "a ferret has no name" if @name.empty?
    return "a ferret's name is #{@name}"
  end
  
  def give_name(name)
    @name = name
  end
end