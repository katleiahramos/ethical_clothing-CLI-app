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
    brand_elements = session.all("h3")
    brand_holder = []
    brand_elements.each do |element|
      brand_holder << element.text
      # brand_and_price = element.text.split(": ")
      # brand = EthicalClothing::Brand.new(brand_and_price[0], brand_and_price[1])
      #brand_holder << info.first("h3").text unless info.first("h3") == nil
    end

    brand_holder.pop
    brand_holder.sort
   #  ==>  ["People Tree: $$",
 # "LA Relaxed: $$",
 # "VETTA Capsule: $$-$$$",...]
  end

  def self.create_brand
    brands = self.get_brands
    brands.each do |brand_with_price|
      elements = brand_with_price.split(": ")
      brand = EthicalClothing::Brand.new(elements[0], elements[1])
    end
    nil
  end



  def self.print_brands
    brands = self.get_brands
    brands.each_with_index do |brand, index|
      puts "#{index + 1}. #{brand}"
    end
    nil
  end

  def self.get_description
  end

  def brands
  #  @@brands
  end





end
