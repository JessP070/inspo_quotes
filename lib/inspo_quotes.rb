class Quotes
  attr_accessor :quoteText
  @@all = [] #this is a class variable

  def initialize(quoteText)
      @quoteText = quoteText
      @@all << self

  end

  def self.all
       @@all
       #class methods start with self
  end


end

