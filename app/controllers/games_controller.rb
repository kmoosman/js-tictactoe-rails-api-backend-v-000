require 'pry'
class GamesController < ApplicationController
  # Add your GamesController code here
  before_action :set_game, only: [:show,:update]

  def create
    @game = Game.create(game_params)
    render json: @game, status: 201
  end
  
  def index
    @game = Game.all
    render json: @game, status: 201
  end

  def show
    render json: @game, status: 201
  end

  def update
    @game.update(game_params)
    render json: @game, status: 201
  end

  private

  def set_game
    @game = Game.find(params[:id])
  end

  def game_params
    params.permit(state: [])
  end

end
