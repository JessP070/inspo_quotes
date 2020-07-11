require 'httparty'

class QuotesAPI

    def get_a_quote
     url = "https://quote-garden.herokuapp.com/api/v2/quotes/random"
    quote = HTTParty.get(url)
    end
end