class Deck < ApplicationRecord
  has_many :cards

  def self.create_deck
    suits = ["Hearts", "Spades", "Clubs", "Diamonds"]
    numbers = [1,2,3,4,5,6,7,8,9,10,11,12,13]
    deck = Deck.create!
    suits.each do |s|
      numbers.each do |n|
        deck.cards << Card.create!(suit: s, number: n, deck_id: deck.id)
      end
    end
  end

end
