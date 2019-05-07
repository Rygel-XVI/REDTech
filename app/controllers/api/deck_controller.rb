class Api::DeckController < ApplicationController

  def index
  end

  def create
    deck = Deck.create!
    d.create_cards
    render json: deck.cards
  end

  def destroy
  end

private

  def deck_params
    params.require(:deck).permit(:id)
  end

end
