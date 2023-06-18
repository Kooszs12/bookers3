class UsersController < ApplicationController
  def index
    @user = User.new
    @users = User.all
  end

  def show
  end

  def edit
    @user = User.find(params[:id])
  end

end