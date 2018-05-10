class EthicalClothing::CLI
  def call
    welcome_and_scrape
    list_brands
    menu
  end

  def welcome_and_scrape
    #
    puts "---------Welcome to the Ethical Clothing ClI App-----------"
    puts "A few things to note: "
    puts ""
    puts "Ethical fashion (or slow fashion or sustainable fashion) simply means that the retailer is transparent about where they're sourcing their clothes, that they pay fairly, and use materials that are organic, un-harmful, or recycled when possible. "
    puts ""
    puts "....one moment, we are collecting your brands..."
    puts ""
    EthicalClothing::Scraper.get_and_create_brands
    puts ""
    puts ".........."
    puts ""
    puts "....."
    puts ""
    EthicalClothing::Scraper.match
  end




  def list_brands
    brands_sorted = EthicalClothing::Brand.all.sort_by {|brand| brand.name}
    puts ""
    puts "---------- Ethical Clothing Brands: ----------"
    puts ""
    brands_sorted.each_with_index do |brand, index|
      puts "#{index + 1}. #{brand.name}"
    end
    puts ""
  end


  def menu
    input = nil
    while input != 'exit'
       puts ""
       puts "Enter the number of a brand to see more details, or type 'list' to see the list of brands, or type 'exit'."
       puts ""
       input = gets.strip.downcase.gsub("'", "")

       #checks for valid input (integer that exists as an index in array of all brands)
       if input.to_i > 0 && EthicalClothing::Brand.all[input.to_i - 1 ]
        brands_sorted = EthicalClothing::Brand.all.sort_by {|brand| brand.name}
        brand = brands_sorted[input.to_i - 1]
        puts ""
        puts "-------------#{brand.name}------------------"
        puts ""
        puts "Price Range | #{brand.price_range}"
        puts ""
        puts "Description |  #{brand.description}"
        puts ""
        puts "Webiste | #{brand.url} "
        puts ""
        puts ""
      elsif input == 'list'
        list_brands
      elsif input == 'exit'
        puts ""
        puts "Goodbye!"
        puts ""
      else
        puts ""
        puts "Sorry, I don't recognize that input."
      end
    end


  end





end
