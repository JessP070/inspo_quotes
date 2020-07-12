require 'colorize'
 require 'pry'
class CLI
     attr_accessor :api, :user_input
    
    def initialize
        @user_input = user_input
    end
    
    def print_quote
        @api.get_a_quote
            Quotes.all.select do |index|
            puts "Quote: \"#{index.quoteText}\"
            \nAuthor: #{index.quoteAuthor}".green
            end
            Quotes.all.clear
    end

    def call
        # while(true)
            @api = QuotesAPI.new
            puts "             Welcome              ".yellow
            puts "Need a daily dose of inspiration?".yellow
            puts ""
            # reprint_quote
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
            puts "Aww dang it. We'll catch ya later."
        
        else
            puts "invalid input".red
            start
        end
         puts ""
    end
        def reprint_quote

        puts ""
          puts "Would you like another quote? press 'y' to continue press any key to exit"
          puts ""
        user_input = gets.strip.to_s.downcase
        if user_input == "y"
            print_quote
            reprint_quote
        elsif user_input == "n"
        else 
        
          puts "Thank you, hope to see you soon!"
        end 
    end
end
