require_relative './scraper.rb'

class EthicalClothing::Brand
  attr_accessor :name, :description
  attr_reader :price_range


  @@all = []

  def initialize(name, price_range)
    @name = name
    @price_range = price_range
    @@all << self
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
