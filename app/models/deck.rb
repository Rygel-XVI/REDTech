class Deck < ApplicationRecord
  has_many :cards

  SUITS = ["Hearts", "Spades", "Clubs", "Diamonds"]
  NUMBERS = [1,2,3,4,5,6,7,8,9,10,11,12,13]

  def initialize
    binding.pry
  end

end
