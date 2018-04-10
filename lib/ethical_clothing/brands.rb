class EthicalClothing::Brand
  attr_accessor :name
  attr_reader :price_range, :base


  @@all = []

  def initialize(name, price_range, base)
    @name = names
    @price_range = price_range
    @base = base
  end


  def self.all
    @@all
  end


  def save
    @@all << self
  end

  def price_range=(price_range)
    #we want to create a belongs to through relationship
  end

  def base=(base)
    #we want to create a belongs to through relationship
  end









end
