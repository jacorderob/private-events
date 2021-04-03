class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
    @user = User.find(params.user_id)
  end

  def create
    if @user.save(user_params)
      redirect_to user_path(@user)
    else
      render new
    end
  end

  private

  def user_params
    params.require(:user).permit(:name)
  end
end
