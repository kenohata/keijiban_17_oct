class BoardsController < ApplicationController
  def index
  end

  def create
    @board = Board.new
    raise Exception, @board.inspect
  end
end
