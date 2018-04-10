require 'nokogiri'
require 'open-uri'
require_relative './brands.rb'
require 'pry'


class EthicalClothing::Scraper

  def self.get_page
    doc = Nokogiri::HTML(open("http://www.thegoodtrade.com/features/fair-trade-clothing"))
    binding.pry
  end

  def get_brands
    @@brands = get_page.css(".sqs-block-content")
  end

  def brands
    @@brands
  end





end
