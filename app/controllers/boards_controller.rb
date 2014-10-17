class BoardsController < ApplicationController
  def index
  end

  def create
    @board = Board.new(params_board)

    raise Exception, @board.inspect
  end

  private

  def params_board
    params.permit(:name, :from, :email, :content)
  end
end
