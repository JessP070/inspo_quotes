class Quotes
  attr_accessor :quoteText, :quoteAuthor
  @@all = [] #this is a class variable

  def initialize(quoteText)
      @quoteText = quoteText
      @quoteAuthor = quoteAuthor
      @@all << self

  end

  def self.all
       @@all
       #class methods start with self
  end

  def self.quote_text
    @quoteText
    end

  def self.quote_author
  @quoteAuthor
  end


end

