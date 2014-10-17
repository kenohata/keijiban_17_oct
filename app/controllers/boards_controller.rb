class BoardsController < ApplicationController
  def index
  end

  def create
    @board = Board.new(params)

    raise Exception, @board.inspect
  end
end
