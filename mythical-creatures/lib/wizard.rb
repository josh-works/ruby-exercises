class Wizard
  attr_reader :name, :bearded, :rested, :spell_count
  def initialize(name, options = {})
    @name = name
    @bearded = options.fetch(:bearded, true)
    @rested = true
    @spell_count = 0
  end
  
  def rested?
    @rested = false if spell_count >= 3
    rested
  end

  def bearded?
    bearded
  end
  
  def incantation(phrase)
    "sudo " + phrase
  end
  
  def cast
    return false unless rested?
    @spell_count += 1
    "MAGIC MISSILE"
  end
end