class RegistrationsController < ApplicationController
  def log_in
  end

  def sign_in
    @user = User.find_by_name(params[:name])
    session[:user_id] = @user.id
    redirect_to user_path(@user)
  end
end
