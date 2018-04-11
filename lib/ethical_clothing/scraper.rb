# require 'nokogiri'
# require 'open-uri'
require_relative './brands.rb'
require 'pry'
require 'capybara/poltergeist'


class EthicalClothing::Scraper

  # def self.testing
  #   session = Capybara::Session.new(:poltergeist)
  #   session.visit('http://stackoverflow.com/')
  #
  #   puts session.document.title
  # end



  def self.get_page
    session = Capybara::Session.new(:poltergeist)
    session.visit("http://www.thegoodtrade.com/features/fair-trade-clothing")

  end

  def self.get_brands
    session = Capybara::Session.new(:poltergeist)
    session.visit("http://simplylivandco.com/blog/best-places-to-buy-affordable-ethical-fashion")
    elements = session.all("h3")
    brand_holder = []
    elements.each do |element|
      brand_holder << element.text
      #brand_holder << info.first("h3").text unless info.first("h3") == nil
    end


    #binding.pry
    brand_holder
   #  ==>  ["Ethical & Sustainable Fashion Brands",
   #  "1. Everlane",
   # "2. Patagonia",
   # "3. Eileen Fisher",
   # "4. People Tree",
   # "5. Reformation",
   # "6. Krochet Kids Intl.",
   # "7. Thought Clothing",
   # "8. PACT Apparel",
   # "9. ABLE",
   # "10. Nisolo",
   # ect
   # need to get rid of the number any that don't start with anumber and split
   #at the space

  end

  def brands
  #  @@brands
  end





end
