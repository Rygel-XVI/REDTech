class Api::DeckController < ApplicationController

  def index
    binding.pry
    render json: Deck.all
  end

  def create
    binding.pry
    Deck.create_deck
    binding.pry
  end

  def destroy
  end

end
