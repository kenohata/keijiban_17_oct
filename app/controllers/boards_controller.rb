class BoardsController < ApplicationController
  def index
  end

  def create
    @board = Board.new
    @board.name    = params[:name]
    @board.from    = params[:from]
    @board.email   = params[:email]
    @board.content = params[:content]

    raise Exception, @board.inspect
  end
end
