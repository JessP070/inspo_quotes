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
    end

    def start
        puts "Please type either 'y' for yes, or 'n' for no."
        user_input = gets.chomp
    if user_input == 'y'
    elsif user_input == 'n'
        puts "Aww dang it. We'll catch ya later."
    else
        puts "invalid input".red
    end
   


end