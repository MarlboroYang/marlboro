class BoardsController < ApplicationController
  before_action :find_board, only:[:edit, :update, :destroy]
  def index
    @boards = Board.all
  end
  def new
    @board = Board.new
  end
  def create
    @board = Board.new(board_params)
    if @board.save
      redirect_to boards_path, notice: '新增討論區成功'
    else
       render :new
    end
  end
  def edit
  end
  def update
    if @board.update(board_params)
      redirect_to boards_path, notice: '更名討論區成功'
    else
      render :edit
    end
  end
  def destroy
    @board.destroy if @board
    redirect_to boards_path, notice: '討論區已刪除'
  end
  private
  def board_params
    params.require(:board).permit(:title, :chat)
  end
  def find_board
    @board = Board.find_by(id: params[:id])
  end
end