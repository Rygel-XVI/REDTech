class Deck < ApplicationRecord
  has_many :cards

  SUITS = ["Hearts", "Spades", "Clubs", "Diamonds"]
  NUMBERS = [1,2,3,4,5,6,7,8,9,10,11,12,13]

  def self.create_deck
    deck = Deck.create!
    SUITS.each do |s|
      NUMBERS.each do |n|
        deck.cards << Card.create!(suit: s, number: n, deck_id: deck.id)
      end
    end
  end

end
