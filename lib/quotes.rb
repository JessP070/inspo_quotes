class Quotes
  attr_accessor :quoteText, :quoteAuthor
  @@all = [] 

  def initialize(quoteText, quoteAuthor)
      @quoteText = quoteText
      @quoteAuthor = quoteAuthor
      @@all << self

  end

  def self.all
       @@all
  end

  def self.quote_text
          @quoteText
  end

  def self.quote_author
      @quoteAuthor
  end

end

