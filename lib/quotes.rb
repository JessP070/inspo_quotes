class Quotes
  attr_accessor :quote_text, :quote_author
  @@all = [] 

  def initialize(quote_text, quote_author)
      @quote_text = quote_text
      @quote_author = quote_author
      @@all << self

  end

  def self.all
       @@all
  end

  def self.quote_text
          @quote_text
  end

  def self.quote_author
      @quote_author
  end

  def self.sort_quote
    @@all.sort {|a, b| a.quote_text <=> b.quote_text}
  end

end

#'add a feature 

# think of it like a history button 

# You'll ask the user if they want to see a history of all the quotes that have shown up for them 

# if they say yes, you'll display all the quotes sorted by quoteText Alphab. You're not allowed to used the sort_by method but you're allowed to use .sort ( no Stack Overflow either I'll know)
#
# display all the quote and authors as usual (if they have authors)


