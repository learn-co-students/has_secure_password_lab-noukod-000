class UsersController < ApplicationController
  def new
    @user=User.new
  end

  def create

    @user=User.create(users_params)

    if @user.valid?
      session[:user_id]=@user.id
    else
      redirect_to "/users/new"
    end

  end

  def users_params
     params.require(:user).permit(:name, :password, :password_confirmation)
  end

end
