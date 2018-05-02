# require 'nokogiri'
# require 'open-uri'
require_relative './brands.rb'
require 'pry'
require 'capybara/poltergeist'


class EthicalClothing::Scraper


  #get page to scrape from
  def self.get_page
    session = Capybara::Session.new(:poltergeist)
    session.visit("http://www.thegoodtrade.com/features/fair-trade-clothing")
    #brand_info = session.all('.sqs-block.html-block.sqs-block-html')
    #brand_info[3].first('p').text
  end

  def self.get_and_create_brands
    session = Capybara::Session.new(:poltergeist)
    session.visit("http://simplylivandco.com/blog/best-places-to-buy-affordable-ethical-fashion")
    brand_elements = session.all("h3")
    brand_holder = []

    brand_elements.each do |element|
      #grab brand name, price, and url
      if element.text.include?(':')
        info = element.text.split(':')
        name = info[0]
        price = info[1] 
        url = element.first('a')['href']
        brand = EthicalClothing::Brand.new(name, price, url)
      else
        nil
      end

    end
    nil
  end


  def self.get_description
    session = Capybara::Session.new(:poltergeist)
    session.visit("http://simplylivandco.com/blog/best-places-to-buy-affordable-ethical-fashion")
    desc_holder = []
    desc_elements = session.all("p")

    desc_elements.each do |element|
      if element.text == ""
        element = "Not Available"
      else
      desc_holder << element.text
      end
    end

    3.times do
      desc_holder.shift
    end
    desc_holder


  end



  def self.create_brands
    brands = self.get_brands
    brands.each do |brand_with_price|
      elements = brand_with_price.split(": ")
      brand = EthicalClothing::Brand.new(elements[0], elements[1])
    end
    nil
  end

  def self.match
    descs = self.get_description
    brands = EthicalClothing::Brand.all

    #lets figure out how to make this a for loop
    i = 0
    brands.each do |brand|
      j = 0
      descs.each do |desc|
        brand.description = desc if i == j
        j += 1
      end
      i += 1
    end
    nil
  end



  def self.print_brands
    brands = self.get_brands.sort
    brands.each_with_index do |brand, index|
      puts "#{index + 1}. #{brand}"
    end
    nil
  end



  def brands
  #  @@brands
  end





end
