class Api::DeckController < ApplicationController

  def index
    render json: Deck.all
  end

  def create
    Deck.create_deck
  end

  def destroy
  end

end
