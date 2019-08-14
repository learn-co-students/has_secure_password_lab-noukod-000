class UsersController < ApplicationController
    def index
        redirect_to '/new'
    end

    def new
      @user = User.new
    end
  
    def create
        @user = User.create(user_params)
        return redirect_to controller: 'users', action: 'new' unless @user.save
        @user.save
        session[:user_id] = @user.id
        redirect_to '/home'
    end
  
    private
    def user_params
      params.require(:user).permit(:name,:password,:password_confirmation)
    end
  end