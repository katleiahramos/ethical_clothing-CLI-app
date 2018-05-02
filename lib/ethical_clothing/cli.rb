class EthicalClothing::CLI
  def call
    list_brands
    menu
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
