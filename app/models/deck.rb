class Deck < ApplicationRecord
  has_many :cards


# creates a full deck of cards and associates them with the current deck
# move the card creation to Card model at some point
  def create_cards
    suits = ["Hearts", "Spades", "Clubs", "Diamonds"]
    numbers = [1,2,3,4,5,6,7,8,9,10,11,12,13]
    suits.each do |s|
      numbers.each do |n|
        self.cards << Card.create!(suit: s, number: n, deck_id: self.id, location: 'deck')
      end
    end
    self
  end

end
