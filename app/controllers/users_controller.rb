class UsersController < ApplicationController
  def index
    @users = User.all
    @user = current_user
  end

  def show
    @user = User.find(params[:id])
    @books = @user.book
  end

  def edit
    @user = User.find(params[:id])
  end

end