# require 'nokogiri'
# require 'open-uri'
require_relative './brands.rb'
require 'pry'
require 'capybara/poltergeist'


class EthicalClothing::Scraper




  def self.get_page
    doc = Capybara::Session.new(:poltergeist)
    doc.visit("http://www.thegoodtrade.com/features/fair-trade-clothing")

  end

  def self.get_brands
    infos = get_page.search("div.sqs-block.html-block.sqs-block-html")
    binding.pry
    info_holder = []
    infos.each do |info|
      #binding.pry
      info_holder << info.css("h2")
    end
    info_holder
  end

  def brands
  #  @@brands
  end





end
