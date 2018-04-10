class EthicalClothing::CLI
  def call
    puts "Welcome to the Ethical Clothing CLI Appp"
    puts "List brand by:"
    puts "1. Brand Name, alphabetically"
    puts "2. Brand's price range, low to high"
    puts "3. Brand's base counry"

    menu
  end

  def menu
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
    #list brands by name alphabetically
    #example
    # 1. Alternative Apparel, $
    # 2. Amour Vert, $$
    puts "list of brand names"

    brands = EthicalClothing::Brand.all 

    # puts "To return to the main menu, type 'main'"
    # puts "To get more information about a brand, type the number"
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
    puts "YOU ARE IN THE SUB MENU"
    puts "To return to the main menu, type 'main'"
    puts "To get more information about a brand, type the number"
    puts "To quit this app, type 'exit' "
    input = gets.strip.downcase

    case input
      when "main"
        call
      #when input is an integer or a number, valid input, then puts description
      when "exit"
        puts "Goddbye!"
      end


  end





end
