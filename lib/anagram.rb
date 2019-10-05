require 'pry'

# Your code goes here!

class Anagram
  
  attr_accessor :word
  
  def initialize(word)
    @word = word
  end
  
  def matching
    piece.split(//).sort == word.split(//).sort
  end
  
  def match(phrase)
    grams = []
    phrase.each { |piece|
      if yield matching
        grams << piece
      end
    }
    grams
  end
  
end