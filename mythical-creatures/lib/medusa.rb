class Medusa
  attr_reader :name, :statues
  def initialize(name)
    @name = name
    @statues = []
  end

  def stare(person)
    statues << person
    make_stoned(person)
    handle_excessive_victims
  end

  def handle_excessive_victims
    return if statues.count <= 3
    victim = statues.shift
    make_unstoned(victim)
  end
  
  def make_stoned(person)
    person.make_stoned
  end
  
  def make_unstoned(person)
    person.make_unstoned
  end
end

class Person
  attr_reader :name, :stoned
  def initialize(name)
    @name = name
    @stoned = false
  end

  def stoned?
    stoned
  end

  def make_stoned
    @stoned = true
  end

  def make_unstoned
    @stoned = false
  end
end