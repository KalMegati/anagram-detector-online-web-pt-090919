require 'pry'

# Your code goes here!

class Anagram
  
  attr_accessor :word
  
  def initialize(word)
    @word = word
  end
  
  def matching
    yield.split(//).sort == word.split(//).sort
  end
  
  def match(phrase)
    grams = []
    phrase.each { |piece|
      if matching {piece}
        grams << piece
      end
    }
    grams
  end
  
end