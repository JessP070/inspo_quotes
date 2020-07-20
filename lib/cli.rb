require 'colorize'
 require 'pry'
class CLI
     attr_accessor :api, :user_input
    
    def initialize
         @user_input = user_input
      
    end

    def print_sorted
        Quotes.sort_quote.each do |quote|
            puts "Quote: \"#{quote.quote_text}".green
            puts ""
            puts "Author: \"#{quote.quote_author}".green
            puts ""
            
        end
    end
    
    def print_quote
        @api.get_a_quote
            puts "Quote: \"#{Quotes.all[-1].quote_text}\"
             \nAuthor: #{Quotes.all[-1].quote_author}".green
          
     end
        

    def call
            @api = QuotesAPI.new
            puts "             Welcome              ".yellow
            puts "Need a daily dose of inspiration?".yellow
            puts ""
            start
    end

    def start
            puts "Please type either 'y' for yes, or 'n' for no."
            user_input = gets.chomp.to_s.downcase
        if user_input == 'y'
            puts ""

            print_quote
            reprint_quote
            
         elsif user_input == 'n'
           puts "Aww dang it. We'll catch ya later.".light_blue
        
         else
           puts "invalid input".red
           start
        end
            puts ""
        end


    def reprint_quote
          puts ""
          puts "Type 'y' to generate a new quote, 'h' to see your quote history, or any key and 'enter' to exit."
          puts ""
          user_input = gets.strip.to_s.downcase
        if user_input == "y"
            puts ""
            print_quote
            reprint_quote
            elsif user_input == "h"
                puts ""
                print_sorted
                reprint_quote
                
            elsif user_input == "n"
            
            else 
                puts""
          puts "Thank you, hope to see you soon!".yellow
        end 
    end
       
    
end

