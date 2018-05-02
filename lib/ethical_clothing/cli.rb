class EthicalClothing::CLI
  def call
    puts "Welcome to the Ethical Clothing CLI Appp"

    menu
  end

  def menu
    puts "List brand by:"
    puts "1. Brand Name, alphabetically"
    puts "2. Brand's price range, low to high"
    puts "Enter the number for the option you would like, or type 'exit' to exit."
    input = gets.strip.downcase

      case input
        when "1"
          list_by_name
        when "2"
          list_by_price
        when "3"
          list_by_country
        when "exit"
          puts "Goodbye!"
        end


  end



  def list_by_name
    EthicalClothing::Brand.all.each_with_index do |brand, index|
      puts "#{index + 1}. #{brand.name}"
    end
    #EthicalClothing::Scraper.print_brands

    sub_menu

  end

  def list_by_price
    #list brands by price range, low to high
    puts "brands listed by price range, low to high"


    # puts "To return to the main menu, type 'main'"
    # puts "To get more information about a brand, type the number"
  end

  def list_by_country
    #list brands by country they are based in
    puts "list of brands by counry they are based in, alphabetical"
    puts "To return to the main menu, type 'main'"
    puts "To get more information about a brand, type the number"
  end

  def sub_menu
    puts "To return to the main menu, type 'main'"
    puts "To get more information about a brand, type the number"
    puts "To quit this app, type 'exit' "
    input = gets.strip.downcase

    brand = EthicalClothing::Brand.all[input.to_i - 1]
    puts "--------#{brand.name}--------"
    puts brand.description
    puts '______________________________'
    #   puts "We're in!"
    # else
    #   puts "Not working"
    # # case input
    # #   when "main"
    # #     call
    # #   #when input is an integer or a number, valid input, then puts description
    # #   when input.to_i > 0 && EthicalClothing::Brand.all[input.to_i - 1]
    # #     binding.pry
    # #     brand_details = EthicalClothing::Brand.all[input.to_i - 1]
    # #     brand_details.description
    # #   when "exit"
    # #     puts "Goddbye!"
    # #   end
    # end


  end





end
