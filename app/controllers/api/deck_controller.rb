class Api::DeckController < ApplicationController

  def index
  end

  def create
    deck = Deck.create!
    deck.create_cards
    render json: deck.cards
  end

  def destroy
  end

end
