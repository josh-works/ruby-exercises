class Wallet
  DENOMINATIONS = {
    penny: 1,
    nickel: 5,
    dime: 10,
    quarter: 25,
    dollar: 100
  }
  attr_reader :cents
  def initialize
    @cents = 0
  end
  
  def <<(unit)
    @cents += DENOMINATIONS[unit]
  end
  
  def take(*coins)
    coins.each do |coin|
      return unless @cents >= DENOMINATIONS[coin]
      
      @cents -= DENOMINATIONS[coin]
    end
  end
end