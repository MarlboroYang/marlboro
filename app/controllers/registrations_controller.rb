class RegistrationsController < ApplicationController
  def new
    @user = User.new
  end
  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to root_path, notice: '新增成功'
    else
      rander :new
    end
  end
  
end