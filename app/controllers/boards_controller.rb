class BoardsController < ApplicationController
  def index
    @boards = Board.all
  end

  def create
    @board = Board.new(params_board)

    @board.save
    redirect_to "/boards"
  end

  def show
    @board = Board.find(params[:id])
  end

  def edit
    @board = Board.find(params[:id])
  end

  private

  def params_board
    params.permit(:name, :from, :email, :content)
  end
end
