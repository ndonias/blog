class UsersController < ApplicationController
  before_action :set_user, only: [:edit, :update, :show, :destroy]

  def index
  	@users = User.all
  end

  def new
  	@user=User.new
  end

  def edit
  end

  def show
  end

  def create
  	@user = User.create(user_params)
  	redirect_to @user, notice: "New user created"
  end

  def destroy
  	@user.destroy
    session[:user_id]=nil
  	redirect_to users_path, notice: "User logged out and deleted."
  end

  def update
  	@user.update(user_params)
  	redirect_to @user, notice: "User susccessfully updated."
  end

  private

  def set_user
  	@user=User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:email, :name, :bio, :password, :age)
  end

end
