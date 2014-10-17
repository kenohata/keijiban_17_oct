class BoardsController < ApplicationController
  def index
  end

  def create
    @board = Board.new({
      name:    params[:name],
      from:    params[:from],
      email:   params[:email],
      content: params[:content],
      })

    raise Exception, @board.inspect
  end
end
