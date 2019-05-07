class Api::DeckController < ApplicationController

  def index
    render json: Deck.all
  end

  def new

  end

  def create

  end

  def destroy
  end

end
