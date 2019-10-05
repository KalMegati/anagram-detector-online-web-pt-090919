require 'pry'

# Your code goes here!

class Anagram
  
  attr_accessor :word
  
  def initialize(word)
    @word = word
  end
  
  def match(phrase)
    grams = []
    phrase.each { |piece|
      if piece.split(//).sort == @word.split(//).sort
        grams << piece
      end
    }
    grams
  end
  
end