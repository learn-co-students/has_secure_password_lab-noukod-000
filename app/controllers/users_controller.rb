class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    if params[:password] == params[:password_confirmation]
      user = User.new(user_params)
      user.save
      session[:user_id] = user.id
    else
      redirect_to 'new'
    end
  end

  private
  def user_params
    params.require(:user).permit(:name,:password,:password_confirmation)
  end
end