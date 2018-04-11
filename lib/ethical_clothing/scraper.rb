require 'nokogiri'
require 'open-uri'
require_relative './brands.rb'
require 'pry'


class EthicalClothing::Scraper

  def self.get_page
    doc = Nokogiri::HTML(open("http://simplylivandco.com/blog/best-places-to-buy-affordable-ethical-fashion"))
    binding.pry
  end

  def self.get_brands
    infos = get_page.search("div.sqs-block-content")
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
