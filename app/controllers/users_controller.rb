class UsersController < ApplicationController
  def index
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      auto_login(@user)
      redirect_to root_path, :notice => "Account created"
    else
      flash[:alert] = "Try Again"
      redirect_to users_path
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def user_params
    return params.require(:user).permit(:email, :first_name, :last_name, :password)
  end

end
