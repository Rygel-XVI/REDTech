class Card < ApplicationRecord
  belongs_to :deck

  # validate presence of number and suit on creation
  validates :suit, :number, presence: true
  # validates_inclusion_of :suit, in: ["Hearts", "Spades", "Clubs", "Diamonds"]
  # validates_inclusion_of :number, in: [1,2,3,4,5,6,7,8,9,10,11,12,13]

end
